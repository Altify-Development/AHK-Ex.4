;@Ahk2Exe-Set Prop, CompanyName Altify
;@Ahk2Exe-Set Prop, Copyright ALtify LLC
;@Ahk2Exe-Set Prop, Description Altify Attribute Changing Example
;@Ahk2Exe-Set Prop, FileVersion v1.1
;@Ahk2Exe-Set Prop, InternalName Altify_LLC
;@Ahk2Exe-Set Prop, Language ahk 
;@Ahk2Exe-Set Prop, Name Attribute Changer
;@Ahk2Exe-Set Prop, ProductVersion v1.1
;@Ahk2Exe-Set Prop, Version v1.1
#SingleInstance, Force
SetBatchLines, -1 
Gui, Add, Text,, FileName.txt:
Gui, Add, Text,, FileAttribute:
Gui, Add, Edit, vFN ym
Gui, Add, Edit, vFA
Gui, Add, Button, default, OK
Gui, Add, CheckBox, vOoF, Operate On Folders
Gui, Add, CheckBox, vRC, Recurse
Gui, Add, Text, ym ym, R = READONLY
Gui, Add, Text,, A = ARCHIVE
Gui, Add, Text,, S = SYSTEM
Gui, Add, Text,, H = HIDDEN
Gui, Add, Text,, N = NORMAL (this is valid only when used without any other attributes)
Gui, Add, Text,, O = OFFLINE
Gui, Add, Text,, T = TEMPORARY
Gui, Add, Text,, Recurse = Subfolders and Subfiles Affected
Gui, Add, Text,, Example for FileAttribute = "+RH" or "+R+H" to apply read only and hidden
Gui, Show,, Simple File Attribute Changer Example
return

GuiClose:
ButtonOK:
Gui, Submit

FileSetAttrib,%FA%,%FN%,%OoF%,%RC%
