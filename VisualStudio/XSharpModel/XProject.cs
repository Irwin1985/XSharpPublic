﻿//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EnvDTE;
using LanguageService.CodeAnalysis;
using LanguageService.CodeAnalysis.XSharp;
using System.Collections.Concurrent;
using System.Collections.Immutable;
using EnvDTE80;
using Microsoft.VisualStudio;
using System.Diagnostics;

namespace XSharpModel
{
    [DebuggerDisplay("{Name,nq}")]
    public class XProject
    {
        private ConcurrentDictionary<string, XFile> xSourceFilesDict;
        private ConcurrentDictionary<string, XFile> xOtherFilesDict;
        private IXSharpProject _projectNode;
        //private XType _globalType;
        private bool _loaded;
        //
        private SystemTypeController _typeController;
        // List of external Projects, currently unloaded
        private List<string> _unprocessedProjectReferences = new List<string>();
        // List of external Projects, currently loaded
        private List<XProject> _ReferencedProjects = new List<XProject>();

        // See above
        private List<string> _unprocessedStrangerProjectReferences = new List<string>();
        private List<EnvDTE.Project> _StrangerProjects = new List<EnvDTE.Project>();

        // List of assembly references
        private List<AssemblyInfo> _AssemblyReferences = new List<AssemblyInfo>();

        public XProject(IXSharpProject project)
        {
            _projectNode = project;
            xSourceFilesDict = new ConcurrentDictionary<string, XFile>(StringComparer.OrdinalIgnoreCase);
            xOtherFilesDict = new ConcurrentDictionary<string, XFile>(StringComparer.OrdinalIgnoreCase);
            this._typeController = new SystemTypeController();
            this._loaded = true;
            if (_projectNode == null)
            {

            }
        }

        public string Name
        {
            get
            {
                return System.IO.Path.GetFileNameWithoutExtension(ProjectNode.Url);
            }
        }

        public bool Loaded
        {
            get { return _loaded; }
            set { _loaded = value; }
        }


        public List<AssemblyInfo> AssemblyReferences => _AssemblyReferences;

        public List<XFile> SourceFiles
        {
            get
            {
                return xSourceFilesDict.Values.ToList();
            }
        }
        public List<XFile> OtherFiles
        {
            get
            {
                return xOtherFilesDict.Values.ToList();
            }
        }



        public IXSharpProject ProjectNode
        {
            get
            {
                return _projectNode;
            }

            set
            {
                _projectNode = value;
            }
        }

        public void ClearAssemblyReferences()
        {
            _AssemblyReferences.Clear();
        }

        public void AddAssemblyReference(VSLangProj.Reference reference)
        {
            var assemblyInfo = SystemTypeController.LoadAssembly(reference);
            _AssemblyReferences.Add(assemblyInfo);
        }
        public void AddAssemblyReference(string path)
        {
            var assemblyInfo = SystemTypeController.LoadAssembly(path);
            _AssemblyReferences.Add(assemblyInfo);
        }
        public void UpdateAssemblyReference(string fileName)
        {
            var assemblyInfo = SystemTypeController.LoadAssembly(fileName);
            assemblyInfo.UpdateAssembly();
        }


        public void RemoveAssemblyReference(string fileName)
        {
            foreach (var assemblyInfo in _AssemblyReferences)
            {
                if (string.Equals(assemblyInfo.FileName, fileName, StringComparison.OrdinalIgnoreCase))
                {
                    _AssemblyReferences.Remove(assemblyInfo);
                    break;
                }
            }
            return;
        }

        public bool AddFile(string filePath)
        {
            XFile file = new XFile(filePath);
            return this.AddFile(file);
        }

        public bool AddFile(XFile xFile)
        {
            if (xFile != null)
            {

                if (xFile.IsSource)
                {
                    if (xSourceFilesDict.ContainsKey(xFile.FullPath))
                    {
                        XFile fileOld;
                        xSourceFilesDict.TryRemove(xFile.FullPath, out fileOld);
                    }
                    xFile.Project = this;
                    return xSourceFilesDict.TryAdd(xFile.FullPath, xFile);
                }
                else
                {
                    if (xOtherFilesDict.ContainsKey(xFile.FullPath))
                    {
                        XFile fileOld;
                        xOtherFilesDict.TryRemove(xFile.FullPath, out fileOld);
                    }
                    xFile.Project = this;
                    return xOtherFilesDict.TryAdd(xFile.FullPath, xFile);

                }
            }
            return false;
        }

        public bool AddProjectReference(string url)
        {
            if (!_unprocessedProjectReferences.Contains(url))
            {
                _unprocessedProjectReferences.Add(url);
                return true;
            }
            return false;
        }

        public bool RemoveProjectReference(string url)
        {
            if (_unprocessedProjectReferences.Contains(url))
            {
                _unprocessedProjectReferences.Remove(url);
                return true;
            }
            else
            {
                // Does this url belongs to a project in the Solution ?
                XProject prj = XSolution.FindProject(url);
                if (_ReferencedProjects.Contains(prj))
                {
                    _ReferencedProjects.Remove(prj);
                    return true;
                }
            }
            return false;
        }

        public bool AddStrangerProjectReference(string url)
        {
            if (!_unprocessedStrangerProjectReferences.Contains(url))
            {
                _unprocessedStrangerProjectReferences.Add(url);
                return true;
            }
            return false;
        }

        public bool RemoveStrangerProjectReference(string url)
        {
            if (_unprocessedStrangerProjectReferences.Contains(url))
            {
                _unprocessedStrangerProjectReferences.Remove(url);
                return true;
            }
            else
            {
                // Does this url belongs to a project in the Solution ?
                EnvDTE.Project prj = this.ProjectNode.FindProject(url);
                if (_StrangerProjects.Contains(prj))
                {
                    _StrangerProjects.Remove(prj);
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// List of XSharp Projects that our "current" project is referencing
        /// </summary>
        public IImmutableList<XProject> ReferencedProjects
        {
            get
            {
                List<string> existing = new List<string>();
                foreach (string s in _unprocessedProjectReferences)
                {
                    XProject p = XSolution.FindProject(s);
                    if (p != null)
                    {
                        existing.Add(s);
                        _ReferencedProjects.Add(p);
                    }
                }
                foreach (string s in existing)
                {
                    _unprocessedProjectReferences.Remove(s);
                }
                return _ReferencedProjects.ToImmutableList();
            }
        }


        /// <summary>
        /// List of stranger Projects that our "current" project is referencing.
        /// Could be any project that support EnvDTE.FileCodeModel (so CS, Vb.Net, ...)
        /// </summary>
        public IImmutableList<EnvDTE.Project> StrangerProjects
        {
            get
            {
                List<string> existing = new List<string>();
                foreach (string s in _unprocessedStrangerProjectReferences)
                {
                    EnvDTE.Project p = this.ProjectNode.FindProject(s);
                    if (p != null)
                    {
                        existing.Add(s);
                        _StrangerProjects.Add(p);
                    }
                }
                foreach (string s in existing)
                {
                    _unprocessedStrangerProjectReferences.Remove(s);
                }
                return _StrangerProjects.ToImmutableList();
            }
        }

        public  XTypeMember FindFunction(string name)
        {
            foreach (var file in this.SourceFiles)
            {
                var members = file.GlobalType?.Members;
                if (members != null)
                {
                    var member = members.Find(
                        x => (x.Kind == Kind.Procedure || x.Kind == Kind.Function)
                        && string.Compare(x.Name, name, true) == 0);
                    if (member != null)
                        return member;

                }
            }
            return null;
        }

        public XFile FindFullPath(string fullPath)
        {
            if (xSourceFilesDict.ContainsKey(fullPath))
                return xSourceFilesDict[fullPath];
            if (xOtherFilesDict.ContainsKey(fullPath))
                return xOtherFilesDict[fullPath];
            return null;
        }

        public System.Type FindSystemType(string name, IReadOnlyList<string> usings)
        {
            return _typeController.FindType(name, usings, _AssemblyReferences);
        }

        public ImmutableList<string> GetAssemblyNamespaces()
        {
            return _typeController.GetNamespaces(_AssemblyReferences);
        }

        public void Walk()
        {
            //
            ModelWalker walker = ModelWalker.GetWalker();
            walker.AddProject(this);

        }

        public void RemoveFile(string url)
        {
            if (this.xSourceFilesDict.ContainsKey(url))
            {
                XFile file;
                this.xSourceFilesDict.TryRemove(url, out file);
            }
            else if (this.xOtherFilesDict.ContainsKey(url))
            {
                XFile file;
                this.xOtherFilesDict.TryRemove(url, out file);
            }
        }


        /// <summary>
        /// Look for a TypeName in all Files that compose the current XProject
        /// </summary>
        /// <param name="typeName"></param>
        /// <param name="caseInvariant"></param>
        /// <returns></returns>
        public XType Lookup(string typeName, bool caseInvariant)
        {
            // Create local copies of the collections to make sure that other background
            // operations do not change the collections
            XType xType = null;
            XType xTemp = null;
            var aFiles = this.xSourceFilesDict.Values.ToArray();
            foreach (XFile file in aFiles)
            {
                // The dictionary is case insensitive
                file.TypeList.TryGetValue(typeName, out xTemp);
                if (xTemp != null && !caseInvariant)
                {
                    if (xType.FullName != typeName && xType.Name != typeName)
                    {
                        xType = null;
                    }
                }
                if (xTemp != null)
                {
                    if (xTemp.IsPartial)
                    {
                        // Do we have the other parts ?
                        if (xType != null)
                        {
                            xType = xType.Merge(xTemp);
                        }
                        else
                        {
                            // We need to Copy the type, unless we will modify the original one !
                            xType = xTemp.Duplicate();
                        }
                    }
                    else
                    {
                        xType = xTemp;
                        break;
                    }
                }
            }
            //
            return xType;
        }

        public XType LookupReferenced(string typeName, bool caseInvariant)
        {
            XType xType = null;
            // Ok, might be a good idea to look into References, no ?
            foreach (var item in ReferencedProjects)
            {
                xType = item.Lookup(typeName, caseInvariant);
                if (xType != null)
                    break;
            }
            //
            return xType;
        }

        public XType LookupFullName(string typeName, bool caseInvariant)
        {
            // Create local copies of the collections to make sure that other background
            // operations do not change the collections
            XType xType = null;
            XType xTemp = null;
            var aFiles = this.xSourceFilesDict.Values.ToArray();
            foreach (XFile file in aFiles)
            {
                XType x = null;
                // The dictionary is case insensitive
                if (file.TypeList.TryGetValue(typeName, out x))
                {
                    xTemp = x;
                    if (!caseInvariant)
                    {
                        if (x.FullName != typeName && x.Name != typeName)
                        {
                            xTemp = null;
                        }
                    }
                }

                if (xTemp != null)
                {
                    if (xTemp.IsPartial)
                    {
                        // Do we have the other parts ?
                        if (xType != null)
                        {
                            xType = xType.Merge(xTemp);
                        }
                        else
                        {
                            // We need to Copy the type, unless we will modify the original one !
                            xType = xTemp.Duplicate();
                        }
                    }
                    else
                    {
                        xType = xTemp;
                        break;
                    }
                }
            }
            //
            return xType;
        }

        public XType LookupFullNameReferenced(string typeName, bool caseInvariant)
        {
            XType xType = null;
            // Ok, might be a good idea to look into References, no ?
            foreach (var item in ReferencedProjects)
            {
                xType = item.LookupFullName(typeName, caseInvariant);
                if (xType != null)
                    break;
            }
            //
            return xType;
        }

        // Look for a TypeName in "stranger" projects
        public EnvDTE.CodeElement LookupForStranger(string typeName, bool caseInvariant)
        {
            // If not found....
            EnvDTE.CodeElement foundElement = null;
            // Enumerate all referenced external Projects
            foreach (EnvDTE.Project project in this.StrangerProjects)
            {
                //
                foundElement = SearchInItems(project.ProjectItems, typeName, caseInvariant);
                //
                if (foundElement != null)
                    break;
            }
            //
            return foundElement;
        }

        private CodeElement SearchInItems(ProjectItems projectItems, string typeName, bool caseInvariant)
        {
            // If not found....
            EnvDTE.CodeElement foundElement = null;
            // VSConstants.GUID_ItemType_PhysicalFolder.ToString().ToUpper();
            String folderKind = "{6BB5F8EF-4483-11D3-8BCF-00C04F8EC28C}"; 
            String itemKind = "";
            // Retrieve items -> Projects
            foreach (EnvDTE.ProjectItem item in projectItems)
            {
                itemKind = item.Kind.ToUpper();
                if (  itemKind == folderKind ) // "{6BB5F8EF-4483-11D3-8BCF-00C04F8EC28C}"
                {
                    // A Folder ! Recursive search...
                    foundElement = SearchInItems( item.ProjectItems, typeName, caseInvariant);
                    //
                    if (foundElement != null)
                        break;
                }
                // Does this project provide a FileCodeModel ?
                // XSharp is (currently) not providing such object
                EnvDTE.FileCodeModel fileCodeModel = item.FileCodeModel;
                if (fileCodeModel == null)
                    continue;
                // First, search for Namespaces, this is where we will find Classes
                foreach (EnvDTE.CodeElement codeElementNS in fileCodeModel.CodeElements)
                {
                    if (codeElementNS.Kind == EnvDTE.vsCMElement.vsCMElementNamespace)
                    {
                        // May be here, we could speed up search if the TypeName doesn't start with the Namespace name ??
                        //
                        // Classes are childs, so are Enums and Structs
                        foreach (EnvDTE.CodeElement elt in codeElementNS.Children)
                        {
                            // TODO: And what about Enums, Structures, ... ???
                            // is it a Class/Enum/Struct ?
                            if ((elt.Kind == EnvDTE.vsCMElement.vsCMElementClass) ||
                                (elt.Kind == EnvDTE.vsCMElement.vsCMElementEnum) ||
                                (elt.Kind == EnvDTE.vsCMElement.vsCMElementStruct))
                            {
                                // So the element name is
                                string elementName = elt.FullName;
                                // !!!! WARNING !!! We may have nested types
                                elementName = elementName.Replace("+", ".");
                                // Got it ?
                                if (caseInvariant)
                                {
                                    if (elementName.ToLowerInvariant() == typeName.ToLowerInvariant())
                                    {
                                        // Bingo !
                                        foundElement = elt;
                                        break;
                                    }
                                }
                                else
                                {
                                    if (elementName.ToLower() == typeName.ToLower())
                                    {
                                        // Bingo !
                                        foundElement = elt;
                                        break;
                                    }
                                }
                            }
                        }
                        //
                        if (foundElement != null)
                            break;
                    }
                }
                //
                if (foundElement != null)
                    break;
            }
            //
            return foundElement;
        }

        public ImmutableList<XType> Namespaces
        {
            get
            {
                // Create local copies of the collections to make sure that other background
                // operations do not change the collections
                List<XType> ns = new List<XType>();
                var aFiles = this.SourceFiles.ToArray();
                foreach (XFile file in aFiles)
                {
                    var aTypes = file.TypeList.Values;
                    foreach (XType elmt in aTypes)
                    {
                        if (elmt.Kind == Kind.Namespace)
                        {
                            // Check for Duplicates
                            XType duplicate = ns.Find(x => x.Name.ToLowerInvariant() == elmt.Name.ToLowerInvariant());
                            if (duplicate == null)
                            {
                                ns.Add(elmt);
                            }
                        }
                    }
                }
                return ns.ToImmutableList();
            }
        }


    }

    public class OrphanedFilesProject : IXSharpProject
    {

        private XProject project;

        internal XProject Project
        {
            get { return project; }
            set { project = value; }
        }
        public string IntermediateOutputPath => "";
        public XSharpParseOptions ParseOptions => XSharpParseOptions.Default;

        public string RootNameSpace => "";
        public string Url => "";

        public void AddIntellisenseError(string file, int line, int column, int Length, string errCode, string message, DiagnosticSeverity sev)
        {
            return;
        }

        public void ClearIntellisenseErrors(string file)
        {
            return;
        }

        public Project FindProject(string sProject)
        {
            return null;
        }

        public List<IXErrorPosition> GetIntellisenseErrorPos(string fileName)
        {
            return new List<IXErrorPosition>();
        }

        public void OpenElement(string file, int line, int column)
        {
            return;
        }

        public void SetStatusBarText(string message)
        {
            return;
        }
        public void SetStatusBarAnimation(bool onoff, short id)
        {
            return;
        }

        public void ShowIntellisenseErrors()
        {
            return;
        }

        public bool IsDocumentOpen(string file)
        {
            // Always open. We remove file from project when it is closed.
            return true;
        }

        public string DocumentGetText(string file, ref bool isOpen)
        {
            isOpen = false;
            return "";
        }

        public bool DocumentInsertLine(string fileName, int line, string text)
        {
            return false;
        }
        public bool DocumentSetText(string fileName, string text)
        {
            return false;
        }

        public void AddFileNode(string strFileName)
        {
            return;
        }
        public void DeleteFileNode(string strFileName)
        {
            return;
        }
        public bool HasFileNode(string strFileName)
        {
            return true;
        }
    }
}
