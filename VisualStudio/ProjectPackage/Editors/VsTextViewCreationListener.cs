﻿//
// Copyright (c) XSharp B.V.  All Rights Reserved.
// Licensed under the Apache License, Version 2.0.
// See License.txt in the project root for license information.
//
using System;
using System.ComponentModel.Composition;
using System.Diagnostics;
using Microsoft.VisualStudio.OLE.Interop;
using Microsoft.VisualStudio.Text;
using Microsoft.VisualStudio.Text.Editor;
using Microsoft.VisualStudio.TextManager.Interop;
using Microsoft.VisualStudio.Utilities;
using Microsoft.VisualStudio;
using Microsoft.VisualStudio.Package;
using System.Runtime.InteropServices;
using Microsoft.VisualStudio.Editor;
using Microsoft.VisualStudio.Language.Intellisense;
using Microsoft.VisualStudio.Text.Operations;
using Microsoft.VisualStudio.Text.Classification;
using Microsoft.VisualStudio.Text.Tagging;

namespace XSharp.Project
{
    // This code is used to determine if a file is opened inside a Vulcan project
    // or another project.
    // When the language service is set to our language service then we get the ProjectItem through DTE.
    // When the project item type is defined inside an assembly that has 'vulcan' in its
    // name then we assume it is a vulcan filenode, and then we will set the language service
    // to that from vulcan.
    // You must make sure that the projectpackage is also added as a MEF component to the vsixmanifest
    // otherwise the Export will not work.

    [Export(typeof(IVsTextViewCreationListener))]
    [ContentType("code")]
    [TextViewRole(PredefinedTextViewRoles.Editable)]

    internal class VsTextViewCreationListener : IVsTextViewCreationListener
    {
        [Import]
        IVsEditorAdaptersFactoryService AdaptersFactory = null;

        [Import]
        ICompletionBroker CompletionBroker = null;

        [Import]
        ITextStructureNavigatorSelectorService NavigatorService { get; set; }

        [Import]
        ISignatureHelpBroker SignatureHelpBroker = null;

        [Import]
        IBufferTagAggregatorFactoryService aggregator = null;


        public void VsTextViewCreated(IVsTextView textViewAdapter)
        {
            IVsTextLines textlines;
            textViewAdapter.GetBuffer(out textlines);
            if (textlines != null)
            {
                Guid langId;
                textlines.GetLanguageServiceID(out langId);
                if (langId == GuidStrings.guidLanguageService)          // is our language service active ?
                {
                    string fileName = FilePathUtilities.GetFilePath(textlines);
                    if (!EditorHelpers.IsOurFile(fileName))       // is this a file node from Vulcan ?
                    {
                        Guid guidVulcanLanguageService = GuidStrings.guidVulcanLanguageService;
                        textlines.SetLanguageServiceID(guidVulcanLanguageService);
                        return;
                    }
                    //
                    // Only capturing keystroke for OUR languageService... ???
                    //
                    IWpfTextView textView = AdaptersFactory.GetWpfTextView(textViewAdapter);
                    Debug.Assert(textView != null);
                    CommandFilter filter = new CommandFilter(textView, CompletionBroker, NavigatorService.GetTextStructureNavigator(textView.TextBuffer), SignatureHelpBroker, aggregator);
                    IOleCommandTarget next;
                    textViewAdapter.AddCommandFilter(filter, out next);
                    filter.Next = next;
                }
            }
        }

    }

}
