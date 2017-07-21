﻿using Microsoft.VisualStudio.Shell;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace XSharp.Project.OptionsPages
{
    [Guid(XSharpConstants.IntellisenseOptionsPageGuidString)]
    [SharedSettings("TextEditor.XSharp",false)]
    class IntellisenseOptionsPage : DialogPage
    {
        private bool completionListTabs = true;
        public bool CompletionListTabs
        {
            get { return completionListTabs; }
            set { completionListTabs = value; }
        }

        // 0 : none; 1 : UPPER; 2 : lower; 3 : TitleCase
        private int keywordCase = 1;
        public int KeywordCase
        {
            get { return keywordCase; }
            set { keywordCase = value; }
        }

        private bool identifierCase = true;
        public bool IdentifierCase
        {
            get { return identifierCase; }
            set { identifierCase = value; }
        }


        protected override IWin32Window Window
        {
            get
            {
                IntellisenseOptionsControl page = new IntellisenseOptionsControl();
                page.optionsPage = this;
                page.Initialize();
                return page;
            }
        }
        public override void LoadSettingsFromStorage()
        {
            base.LoadSettingsFromStorage();
        }
        public override void SaveSettingsToStorage()
        {
            base.SaveSettingsToStorage();
        }
    }
}
