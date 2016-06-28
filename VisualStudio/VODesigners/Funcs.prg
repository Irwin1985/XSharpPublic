//#include "..\..\Common\Constants.prg"
#using System.Collections.Generic
#using SWF := System.Windows.Forms
#using System.Drawing
#using System.Runtime.InteropServices
#using System.IO
#using System.Xml
#using XSharp.VOEditors


INTERNAL _DLL FUNCTION GetDialogBaseUnits() AS LONG PASCAL:USER32.GetDialogBaseUnits
INTERNAL _DLL FUNCTION SelectObject(hDC AS IntPtr, hgdiobj AS IntPtr) AS IntPtr PASCAL:GDI32.SelectObject
INTERNAL _DLL FUNCTION GetTextExtentPoint32 ( hDC AS IntPtr , lpString AS STRING,cbString AS Int32 , lpSize REF _winSIZE) AS LOGIC PASCAL:GDI32.GetTextExtentPoint32W
INTERNAL _DLL FUNC GetTextMetrics(hDC AS IntPtr, lpMetries REF _winTEXTMETRIC) AS LOGIC PASCAL:GDI32.GetTextMetricsA
[StructLayout(LayoutKind.Sequential)];
INTERNAL STRUCT _winTEXTMETRIC
   EXPORT tmHeight AS LONG
   EXPORT tmAscent AS LONG
   EXPORT tmDescent AS LONG
   EXPORT tmInternalLeading AS LONG
   EXPORT tmExternalLeading AS LONG
   EXPORT tmAveCharWidth AS LONG
   EXPORT tmMaxCharWidth AS  LONG
   EXPORT tmWeight AS LONG
   EXPORT tmOverhang AS LONG
   EXPORT tmDigitizedAspectX AS LONG
   EXPORT tmDigitizedAspectY AS LONG
   EXPORT tmFirstChar AS BYTE
   EXPORT tmLastChar AS BYTE
   EXPORT tmDefaultChar AS BYTE
   EXPORT tmBreakChar AS BYTE
   EXPORT tmItalic AS BYTE
   EXPORT tmUnderlined AS BYTE
   EXPORT tmStruckOut AS BYTE
   EXPORT tmPitchAndFamily AS BYTE
   EXPORT tmCharSet AS BYTE
END STRUCTURE
[StructLayout(LayoutKind.Sequential)];
INTERNAL STRUCT _winSIZE
   EXPORT cx AS Int32
   EXPORT cy AS Int32
END STRUCTURE

INTERNAL STRUCTURE UnitTranslateInfo
   EXPORT tmWidth AS INT
   EXPORT tmHeight AS INT
   EXPORT nBaseUnitX AS INT
   EXPORT nBaseUnitY AS INT
END STRUCTURE

INTERNAL STATIC PARTIAL CLASS Funcs
   STATIC PRIVATE cInstallTemplatesFolder := NULL AS STRING
   STATIC ACCESS InstallTemplatesFolder AS STRING
      LOCAL rk AS Microsoft.Win32.RegistryKey
      LOCAL cTemp AS STRING
      IF String.IsNullOrEmpty(cInstallTemplatesFolder)
         cInstallTemplatesFolder := ""
         TRY
            //rk := Microsoft.Win32.Registry.LocalMachine:OpenSubKey("Software\Grafx\Vulcan.net")
            //IF rk != NULL .and. rk:GetValue("InstallPath") != NULL
            //cTemp := rk:GetValue("InstallPath"):ToString() + "Templates"
            rk := Microsoft.Win32.Registry.LocalMachine:OpenSubKey("SOFTWARE\XSharpBV\XSharp")
            IF rk != NULL .and. rk:GetValue("XSharpPath") != NULL
               
               cTemp := rk:GetValue("XSharpPath"):ToString():Trim()
               if !cTemp:EndsWith("\")
                 cTemp += "\"
               endif
               cTemp += "Templates"
               IF System.IO.Directory.Exists(cTemp)
                  cInstallTemplatesFolder := cTemp
               END IF
            ENDIF
         END TRY
      END IF
   RETURN cInstallTemplatesFolder
   
   INTERNAL STATIC METHOD SetCreateParams(p AS SWF.CreateParams , oDesign AS DesignWindowItem) AS VOID
      LOCAL nStyle , nExStyle AS INT
   
      IF oDesign == NULL
         RETURN
      ENDIF
   
      nStyle := p:Style
      nExStyle := p:ExStyle
   
      nExStyle := Funcs.ApplyVOStyle(oDesign , "Static Edge" , nExStyle)
      nExStyle := Funcs.ApplyVOStyle(oDesign , "Client Edge" , nExStyle)
      nExStyle := Funcs.ApplyVOStyle(oDesign , "Modal Frame" , nExStyle)
   
      nStyle := Funcs.ApplyVOStyle(oDesign , "Border" , nStyle)
   
      p:Style := _Or(p:Style , nStyle)
      p:ExStyle := _Or(p:ExStyle , nExStyle)
   RETURN
   
   INTERNAL STATIC METHOD ApplyVOStyle(oDesign AS DesignWindowItem , cProp AS STRING , nStyle AS INT) AS INT
      LOCAL oProp AS VODesignProperty
      oProp := oDesign:GetProperty(cProp)
      IF oProp != NULL
         IF oProp:ValueLogic
//				nStyle := _Or(nStyle , VODefines.GetValue(oProp:cEnumValues))
            nStyle := _Or(nStyle , (INT)VODefines.GetDefineValue(oProp:aEnumValues[0]))
/*			ELSE
            nStyle := _And(nStyle , 0xFFFFFFF - VODefines.GetValue(oProp:aEnumValues[0]))*/
         ENDIF
      ENDIF
   RETURN nStyle

   INTERNAL STATIC METHOD SplitString(cString AS STRING , cChar AS Char) AS List<STRING>
   LOCAL aList AS List<STRING>
   aList := List<STRING>{}
   RETURN Funcs.SplitString(aList , cString , cChar)
   INTERNAL STATIC METHOD SplitString(aList AS List<STRING> , cString AS STRING , cChar AS Char) AS List<STRING>
   LOCAL nAt AS INT
   DO WHILE cString:Length != 0
      nAt := cString:IndexOf(cChar)
      IF nAt == -1
         aList:Add(cString)
         cString := ""
      ELSE
         aList:Add(cString:Substring(0 , nAt))
         cString := cString:Substring(nAt + 1)
      ENDIF
   END DO
   RETURN aList
   INTERNAL STATIC METHOD ListContainsList(aList1 AS List<STRING> , aList2 AS List<STRING>) AS LOGIC
      LOCAL n,m AS INT
      LOCAL lFound AS LOGIC
      FOR n := 0 UPTO aList2:Count - 1
         lFound := FALSE
         FOR m := 0 UPTO aList1:Count - 1
            IF aList1[m]:ToUpper() == aList2[n]:ToUpper()
               lFound := TRUE
               EXIT
            ENDIF
         NEXT
         IF !lFound
            RETURN FALSE
         ENDIF
      NEXT
   RETURN TRUE

   INTERNAL STATIC METHOD MessageBox(cMessage AS STRING , cCaption AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , cCaption , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Information)
   RETURN
   INTERNAL STATIC METHOD MessageBox(cMessage AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , Resources.EditorName , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Information)
   RETURN
   INTERNAL STATIC METHOD WarningBox(cMessage AS STRING , cCaption AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , cCaption , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Warning)
   RETURN
   INTERNAL STATIC METHOD WarningBox(cMessage AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , Resources.EditorName , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Warning)
   RETURN
   INTERNAL STATIC METHOD ErrorBox(cMessage AS STRING , cCaption AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , cCaption , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Error)
   RETURN
   INTERNAL STATIC METHOD ErrorBox(cMessage AS STRING) AS VOID
      SWF.MessageBox.Show(cMessage , Resources.EditorName , SWF.MessageBoxButtons.OK , SWF.MessageBoxIcon.Error)
   RETURN
   INTERNAL STATIC METHOD QuestionBox(cMessage AS STRING , cCaption AS STRING) AS LOGIC
   RETURN SWF.MessageBox.Show(cMessage , cCaption , SWF.MessageBoxButtons.YesNo , SWF.MessageBoxIcon.Question) == SWF.DialogResult.Yes
   INTERNAL STATIC METHOD QuestionBox(cMessage AS STRING) AS LOGIC
   RETURN SWF.MessageBox.Show(cMessage , Resources.EditorName , SWF.MessageBoxButtons.YesNo , SWF.MessageBoxIcon.Question) == SWF.DialogResult.Yes

   INTERNAL STATIC METHOD PixelsToUnits(oRect AS Rectangle , oInfo AS UnitTranslateInfo) AS Rectangle
      oRect:X := (INT)((REAL8(oRect:X * oInfo:nBaseUnitX) / (REAL8)(oInfo:tmWidth * 2) + (REAL8)0.5))
      oRect:Y := (INT)((REAL8(oRect:Y * oInfo:nBaseUnitY) / (REAL8)(oInfo:tmHeight * 2) + (REAL8)0.5))
      oRect:Width := (INT)((REAL8(oRect:Width * oInfo:nBaseUnitX) / (REAL8)(oInfo:tmWidth * 2) + (REAL8)0.5))
      oRect:Height :=(INT)((REAL8(oRect:Height * oInfo:nBaseUnitY) / (REAL8)(oInfo:tmHeight * 2) + (REAL8)0.5))
   RETURN oRect

   INTERNAL STATIC METHOD StringToColor(cColor AS STRING) AS Color
      LOCAL oColor AS Color
      oColor := Color.Empty
      DO CASE
      CASE cColor == "COLORBLACK"
         oColor := Color.Black
      CASE cColor == "COLORBLUE"
         oColor := Color.Blue
      CASE cColor == "COLORCYAN"
         oColor := Color.Cyan
      CASE cColor == "COLORGREEN"
         oColor := Color.Green
      CASE cColor == "COLORMAGENTA"
         oColor := Color.Magenta
      CASE cColor == "COLORRED"
         oColor := Color.Red
      CASE cColor == "COLORYELLOW"
         oColor := Color.Yellow
      CASE cColor == "COLORWHITE"
         oColor := Color.White
      END CASE
   RETURN oColor

   INTERNAL STATIC METHOD GetFileDir(cFileName AS STRING) AS STRING
      LOCAL oFileInfo AS FileInfo
      oFileInfo := FileInfo{cFileName}
   RETURN oFileInfo:Directory:FullName

   INTERNAL STATIC METHOD TranslateCaption(cCaption AS STRING , lCode AS LOGIC) AS STRING
   RETURN TranslateCaption(cCaption , lCode , TRUE)
   INTERNAL STATIC METHOD TranslateCaption(cCaption AS STRING , lCode AS LOGIC , lAddQuotesIfNoResource AS LOGIC) AS STRING
      LOCAL cDefCaption AS STRING
      LOCAL cIndex AS STRING
      LOCAL cTemp AS STRING
      LOCAL cRet AS STRING
      LOCAL cDelim AS Char
      LOCAL n AS INT
      cTemp := cCaption:Trim()
      IF lCode .and. lAddQuotesIfNoResource
         cCaption := e"\"" + cCaption + e"\""
      ENDIF
      IF cTemp:Length > 5 .and. cTemp[0] == '<' .and. cTemp[cTemp:Length - 1] == '>'
         cTemp := cTemp:Substring(1 , cTemp:Length - 2):Trim()
      ELSE
         RETURN cCaption
      ENDIF
      cDelim := cTemp[0]
      cDefCaption := NULL
      IF cDelim == (Char)34 .or. cDelim == (Char)39 .or. cDelim == '['
         IF cDelim == '['
            cDelim := ']'
         ENDIF
         n := 1
         DO WHILE n < cTemp:Length
            IF cTemp[n] == cDelim
               cDefCaption := cTemp:Substring(1 , n - 1)
               IF cTemp:Length > n
                  cTemp := cTemp:Substring(n + 1):Trim()
               ELSE
                  RETURN cCaption
               ENDIF
               EXIT
            ELSE
               n ++
            ENDIF
         END DO
      ENDIF
      IF cDefCaption == NULL .or. cTemp:Length < 2
         RETURN cCaption
      ENDIF

      cIndex := NULL
      IF cTemp[0] == ','
         cIndex := cTemp:Substring(1):Trim()
      ENDIF
      IF cIndex == NULL .or. cIndex:Length == 0
         RETURN cCaption
      ENDIF
/*		FOR n := 0 UPTO cIndex:Length - 1
         IF "0123456789":IndexOf(cIndex[n]) == -1
            RETURN cCaption
         ENDIF
      NEXT*/
      
      IF lCode
         cRet := e"LoadResString(\"" + cDefCaption + e"\" , " + cIndex + ")"
      ELSE
         cRet := cDefCaption
      ENDIF
      
   RETURN cRet
   
   STATIC METHOD GetModuleNameFromBinary(cFileName AS STRING) AS STRING
      LOCAL cModuleName , cModuleFilename AS STRING
      IF SplitBinaryFilename(cFileName , OUT cModuleName , OUT cModuleFilename)
         RETURN cModuleName
      END IF
   RETURN NULL
   STATIC METHOD GetModuleFilenameFromBinary(cFileName AS STRING) AS STRING
      LOCAL cModuleName , cModuleFilename AS STRING
      IF SplitBinaryFilename(cFileName , OUT cModuleName , OUT cModuleFilename)
         RETURN cModuleFilename
      END IF
   RETURN NULL
   STATIC METHOD SplitBinaryFilename(cFileName AS STRING , cModuleName OUT STRING , cModuleFilename OUT STRING) AS LOGIC
      LOCAL lOk AS LOGIC
      LOCAL nAt AS INT
      TRY
         nAt := cFileName:LastIndexOf('.')
         cFileName := cFileName:Substring(0 , nAt)
         nAt := cFileName:LastIndexOf('.')
         cFileName := cFileName:Substring(0 , nAt)
         cModuleFilename := cFileName
         nAt := cFileName:LastIndexOf('\\')
         cFileName := cFileName:Substring(nAt + 1)
         cModuleName := cFileName
         lOk := TRUE
      CATCH
         cModuleName := cModuleFileName := ""
         lOk := FALSE
      END TRY
   RETURN lOk


   #region Xml Read/Write functions

   STATIC METHOD AppendProperty(oDocument AS XmlDocument , oXmlNode AS XmlNode , oProp AS DesignProperty) AS VOID
      LOCAL oElement AS XmlElement
//		IF oProp:TextValue:Trim():Length != 0
         oElement := oDocument:CreateElement(oProp:Name)
         oElement:InnerText := oProp:TextValue:Trim()
         oXmlNode:AppendChild(oElement)
//		END IF
   RETURN

   STATIC METHOD ReadXmlProperty(oNode AS XmlNode , oDesign AS DesignItem) AS VOID
      LOCAL oProp AS DesignProperty
      oProp := oDesign:GetProperty(oNode:Name)
      IF oProp != NULL
         DO CASE
         CASE oProp:Type == PropertyType.Numeric
            oProp:Value := Int32.Parse(oNode:InnerText)
         OTHERWISE
            oProp:Value := oNode:InnerText
         END CASE
      END IF
   RETURN
   
   #endregion

   #define CRLF e"\r\n"
   #define CR e"\r"
   #define LF e"\n"
   STATIC METHOD BufferToLines(cBuffer AS STRING) AS List<STRING>
      LOCAL c0 := e"\0" AS STRING
      LOCAL aRet AS List<STRING>
      LOCAL aLines AS STRING[]
      LOCAL n AS INT
      cBuffer := cBuffer:Replace(CRLF , c0)
      cBuffer := cBuffer:Replace(CR , c0)
      cBuffer := cBuffer:Replace(LF , c0)
      aLines := cBuffer:Split(<Char>{'\0'})
      aRet := List<STRING>{}
      FOR n := 1 UPTO aLines:Length
         aRet:Add(aLines[n])
      NEXT
   RETURN aRet
   STATIC METHOD IsModuleOpen(oModule AS XSharp.ProjectAPI.Module) AS LOGIC
      LOCAL lManaged AS LOGIC
      LOCAL lDirty AS LOGIC
      LOCAL lOpen AS LOGIC
      IF oModule == NULL
         RETURN FALSE
      END IF
      oModule:GetInfo(OUT lManaged , OUT lOpen , OUT lDirty)
   RETURN lManaged .and. lOpen

END CLASS

