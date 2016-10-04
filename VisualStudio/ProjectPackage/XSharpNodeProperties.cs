﻿using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using Microsoft.VisualStudio;
using Microsoft.VisualStudio.OLE.Interop;
using Microsoft.VisualStudio.Shell;
using Microsoft.VisualStudio.Shell.Interop;
using Microsoft.VisualStudio.Project;


namespace XSharp.Project
{

    [ComVisible(true), CLSCompliant(false)]
    [Guid("17A040D4-EED7-4a74-B87B-1984F9193CFA")]
    public class XSharpVOBinaryFileNodeProperties : NodeProperties
    {
        public XSharpVOBinaryFileNodeProperties(HierarchyNode node)
          : base(node)
        {
        }


        [Microsoft.VisualStudio.Project.SRCategoryAttribute(Microsoft.VisualStudio.Project.SR.Advanced)]
        [Microsoft.VisualStudio.Project.LocDisplayName(Microsoft.VisualStudio.Project.SR.BuildAction)]
        [Microsoft.VisualStudio.Project.SRDescriptionAttribute(Microsoft.VisualStudio.Project.SR.BuildActionDescription)]
        public Microsoft.VisualStudio.Project.BuildAction BuildAction
        {
            get
            {
                return Microsoft.VisualStudio.Project.BuildAction.None;
            }

        }
        [SRCategoryAttribute(Microsoft.VisualStudio.Project.SR.Misc)]
        [Microsoft.VisualStudio.Project.LocDisplayName(Microsoft.VisualStudio.Project.SR.FileName)]
        [SRDescriptionAttribute(Microsoft.VisualStudio.Project.SR.FileNameDescription)]
        public string FileName
        {
            get
            {
                return this.Node.Caption;
            }
        }

    }

    public class XSharpNonMemberProperties : FileNodeProperties
    {
        // =========================================================================================
        // Constructors
        // =========================================================================================

        /// <summary>
        /// Initializes a new instance of the <see cref="XSharpNonMemberProperties"/> class.
        /// </summary>
        /// <param name="node">The node that contains the properties to expose via the Property Browser.</param>
        public XSharpNonMemberProperties(XSharpFileNode node)
           : base(node)
        {
        }

        // =========================================================================================
        // Properties
        // =========================================================================================

        /// <summary>
        /// Overridden so that it can be make invisible for non member file items.
        /// </summary>
        /// <value>Gets / Sets the BuildAction for the item. It defines how the MS Build
        /// will treat this item at build time.</value>
        [Browsable(false)]
        [AutomationBrowsable(false)]
        public override BuildAction BuildAction
        {
            get
            {
                return base.BuildAction;
            }

            set
            {
                base.BuildAction = value;
            }
        }
    }

        [CLSCompliant(false), ComVisible(true)]
    public class XSharpLinkedFileNodeProperties : XSharpFileNodeProperties
    {
        #region properties
        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.FileName)]
        [SRDescriptionAttribute(SR.FileNameDescription)]
        public override string FileName
        {
            get
            {
                return this.Node.Caption;
            }
            set
            {
                // Do nothing;
            }
        }

        [Browsable(false)]
        public override bool IsLink
        {
            get { return true; }
        }
        #endregion

        #region ctors
        public XSharpLinkedFileNodeProperties(HierarchyNode node) : base(node)
        {
        }
        #endregion
    }

    [CLSCompliant(false), ComVisible(true)]
    public class XSharpDependentFileNodeProperties : XSharpFileNodeProperties
    {
        #region properties

        [SRCategoryAttribute(SR.Advanced)]
        [LocDisplayName(SR.BuildAction)]
        [SRDescriptionAttribute(SR.BuildActionDescription)]
        public override BuildAction BuildAction
        {
            get
            {
                string value = this.Node.ItemNode.ItemName;
                if (value == null || value.Length == 0)
                {
                    return BuildAction.None;
                }
                return (BuildAction)Enum.Parse(typeof(BuildAction), value);
            }
            set
            {
                this.Node.ItemNode.ItemName = value.ToString();
            }
        }


        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.FileName)]
        [SRDescriptionAttribute(SR.FileNameDescription)]
        public override string FileName
        {
            get
            {
                return this.Node.Caption;
            }
            set
            {
                //do nothing
            }
        }
        #endregion

        #region ctors
        public XSharpDependentFileNodeProperties(HierarchyNode node)
            : base(node)
        {
            IsDependent = true;
        }

        #endregion

        #region overridden methods
        public override string GetClassName()
        {
            return SR.GetString(SR.FileProperties, CultureInfo.CurrentUICulture);
        }
        #endregion
    }
    public class XSharpReferenceNodeProperties : ReferenceNodeProperties
    {
        #region ctors
        public XSharpReferenceNodeProperties(HierarchyNode node)
            : base(node)
        {

        }

        #endregion

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Identity)]
        [SRDescriptionAttribute(SR.IdentityDescription)]
        public string Identity
        {
            get
            {
                VSLangProj.Reference r = Node.Object as VSLangProj.Reference;
                return r.Identity;
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.FileType)]
        [SRDescriptionAttribute(SR.FileTypeDescription)]
        public virtual string FileType
        {
            get
            {
                return "Assembly";
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Description)]
        [SRDescriptionAttribute(SR.DescriptionDescription)]
        public string Description
        {
            get
            {
                VSLangProj.Reference r = Node.Object as VSLangProj.Reference;

                if (r != null)
                {
                    return r.Description;
                }
                else
                {
                    return "";
                }
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.StrongName)]
        [SRDescriptionAttribute(SR.StrongNameDescription)]
        public bool StrongName
        {
            get
            {
                VSLangProj.Reference r = Node.Object as VSLangProj.Reference;

                if (r != null)
                {
                    return r.StrongName;
                }
                else
                {
                    return false;
                }
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Culture_)]
        [SRDescriptionAttribute(SR.CultureDescription)]
        public string Culture
        {
            get
            {
                VSLangProj.Reference r = Node.Object as VSLangProj.Reference;

                if (r != null)
                {
                    return r.Culture;
                }
                else
                {
                    return "<unknown>";
                }
            }
        }
 
        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Version)]
        [SRDescriptionAttribute(SR.VersionDescription)]
        public string Version
        {
            get
            {
                VSLangProj.Reference r = Node.Object as VSLangProj.Reference;

                if (r != null)
                {
                    return r.Version;
                }
                else
                {
                    return "<unknown>";
                }
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Resolved)]
        [SRDescriptionAttribute(SR.ResolvedDescription)]
        public virtual bool Resolved
        {
            get
            {
                return ((ReferenceNode)this.Node).Resolved;
            }
        }



    }

    [ComVisible(true)]
    public class XSharpAssemblyReferenceNodeProperties : XSharpReferenceNodeProperties
    {
        #region ctors
        public XSharpAssemblyReferenceNodeProperties(AssemblyReferenceNode node)
            : base(node)
        {
        }
        #endregion

        #region properties

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.SpecificVersion)]
        [SRDescriptionAttribute(SR.SpecificVersionDescription)]
        public bool SpecificVersion
        {
            get
            {
                string specificVersion = this.GetProperty(ProjectFileConstants.SpecificVersion, "False");

                if (String.IsNullOrEmpty(specificVersion))
                {
                    string include = this.GetProperty("Include", "False");
                    return new System.Reflection.AssemblyName(include).Version != null;
                }
                else
                {
                    return bool.Parse(specificVersion);
                }
            }
            set
            {
                this.SetProperty(ProjectFileConstants.SpecificVersion, value.ToString());
            }
        }

        #endregion
    }

    [ComVisible(true)]
    public class XSharpComReferenceNodeProperties : XSharpReferenceNodeProperties
    {
        #region ctors
        public XSharpComReferenceNodeProperties(ComReferenceNode node)
            : base(node)
        {
        }
        #endregion

        #region properties


        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.FileType)]
        [SRDescriptionAttribute(SR.FileTypeDescription)]
        public override  string FileType
        {
            get
            {
                return "ActiveX";
            }
        }

        [SRCategoryAttribute(SR.Misc)]
        [LocDisplayName(SR.Isolated)]
        [SRDescriptionAttribute(SR.IsolatedDescription)]
        public bool Isolated
        {
            // Note: C# seems to change the Isolated property for both wrappers generated for an ActiveX!!!
            // How do we do this???      We need to walk the com references and look for another assembly with the same guid

            get
            {
                string specificVersion = this.GetProperty("Isolated", "False");

                if (String.IsNullOrEmpty(specificVersion))
                {
                    return false;
                }
                else
                {
                    return bool.Parse(specificVersion);
                }
            }
            set
            {
                this.SetProperty("Isolated", value.ToString());
            }
        }

        #endregion
    }


}
