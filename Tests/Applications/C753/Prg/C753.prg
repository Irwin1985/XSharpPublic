// 753. error XS8610: Nullability of reference types in type of parameter 'Xs$Args' doesn't match overridden member.
// /vo5+
#pragma warnings(108, off) //   methid hides parent methid
FUNCTION Start() AS VOID
Foo{}:Show()

CLASS Foo INHERIT System.Windows.Forms.Form
	METHOD Show() AS VOID
	SUPER:Show()
END CLASS
