//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//
using Vulcan

begin namespace XSharp.Runtime
	#region functions
	/// <summary>
	/// Get the class hierarchy of a class.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION ClassTreeClass(symClassName AS __Symbol) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Concatenate two __Symbols.
	/// </summary>
	/// <param name="s1"></param>
	/// <param name="s2"></param>
	/// <returns>
	/// </returns>
	FUNCTION ConcatAtom(s1 AS __Symbol,s2 AS __Symbol) AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// Concatenate three __Symbols.
	/// </summary>
	/// <param name="s1"></param>
	/// <param name="s2"></param>
	/// <param name="s3"></param>
	/// <returns>
	/// </returns>
	FUNCTION ConcatAtom3(s1 AS __Symbol,s2 AS __Symbol,s3 AS __Symbol) AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// </summary>
	/// <param name="s1"></param>
	/// <param name="s2"></param>
	/// <param name="s3"></param>
	/// <param name="s4"></param>
	/// <param name="s5"></param>
	/// <returns>
	/// </returns>
	FUNCTION ConcatAtom5(s1 AS __Symbol,s2 AS __Symbol,s3 AS __Symbol,s4 AS __Symbol,s5 AS __Symbol) AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// </summary>
	/// <param name="symClass"></param>
	/// <param name="symMeth"></param>
	/// <param name="nType"></param>
	/// <param name="pFunc"></param>
	/// <param name="nArgs"></param>
	/// <returns>
	/// </returns>
	unsafe FUNCTION DeclareMethod(symClass AS __Symbol,symMeth AS __Symbol,nType AS DWORD,pFunc AS PTR,nArgs AS DWORD) AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return a set-get code block for a field that is identified by a __Symbol.
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldBlockSym(symVar AS __Symbol) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Get the contents of a field that is identified by a work area alias and the field name.
	/// </summary>
	/// <param name="symAlias"></param>
	/// <param name="symField"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldGetAlias(symAlias AS __Symbol,symField AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Retrieve the contents of a field that is identified by its __Symbolic name.
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldGetSym(symVar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return the position of a field that is identified by a __Symbol.
	/// </summary>
	/// <param name="sField"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldPosSym(sField AS __Symbol) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Set the value of a field identified by its work area alias and field name.
	/// </summary>
	/// <param name="symAlias"></param>
	/// <param name="symField"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldPutAlias(symAlias AS __Symbol,symField AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Set the value of a field that is identified by its __Symbolic name.
	/// </summary>
	/// <param name="symVar"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldPutSym(symVar AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return a set-get code block for a field, specified as a __Symbol, in a specified work area.
	/// </summary>
	/// <param name="symVar"></param>
	/// <param name="nArea"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldWBlockSym(symVar AS __Symbol,nArea AS DWORD) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Return the number of local arguments that a function with the CLIPPER calling convention is expecting.
	/// </summary>
	/// <param name="symFunc"></param>
	/// <returns>
	/// </returns>
	FUNCTION FParamCount(symFunc AS __Symbol) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="symFunc"></param>
	/// <returns>
	/// </returns>
	unsafe FUNCTION FunctionSym2Ptr(symFunc AS __Symbol) AS PTR
		/// THROW NotImplementedException{}
	RETURN IntPtr.Zero

	/// <summary>
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION GSG9(symVar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Determine if a class exists.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsClass(symClassName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if one class is a subclass of another class.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <param name="symSuperClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsClassOf(symClassName AS __Symbol,symSuperClassName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check whether a particular method can be sent to a class.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <param name="symMethodName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsMethodClass(symClassName AS __Symbol,symMethodName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Store all instance variables of a class into an __Array.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IvarListClass(symClassName AS __Symbol) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Obtain a set-get code block for a given memory variable.
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION MemVarBlockSym(symVar AS __Symbol) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION MemVarGetSym(symVar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="symVar"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION MemVarPutSym(symVar AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Create a class list in the form of an __Array for the specified class.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION MethodListClass(symClassName AS __Symbol) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Return the number of arguments that a method is expecting.
	/// </summary>
	/// <param name="symClass"></param>
	/// <param name="symMethod"></param>
	/// <returns>
	/// </returns>
	FUNCTION MParamCount(symClass AS __Symbol,symMethod AS __Symbol) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return a multidimensional __Array of all object-oriented programming __Symbols that constitute the class of an object.
	/// </summary>
	/// <param name="s"></param>
	/// <returns>
	/// </returns>
	FUNCTION OOPTreeClass(s AS __Symbol) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Convert a __Symbol to a string.
	/// </summary>
	/// <param name="sym"></param>
	/// <returns>
	/// </returns>
	FUNCTION __Symbol2String(sym AS __Symbol) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <param name="s1"></param>
	/// <param name="s2"></param>
	/// <returns>
	/// </returns>
	FUNCTION SysCompAtom(s1 AS __Symbol,s2 AS __Symbol) AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="symClass"></param>
	/// <returns>
	/// </returns>
	FUNCTION UnDeclareClass(symClass AS __Symbol) AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="symVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION VarGetSym(symVar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="symVar"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION VarPutSym(symVar AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	#endregion
end namespace