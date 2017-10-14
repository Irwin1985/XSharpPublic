﻿//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//
BEGIN NAMESPACE XSharp.Internal
	
	
	
	/// <summary>
	/// This class is used to mark IntPtr _DLL arguments with the actual type
	/// </summary>
	[AttributeUsage(AttributeTargets.Parameter)];
	SEALED CLASS ActualTypeAttribute INHERIT Attribute
		PRIVATE _value AS System.Type
		
		PROPERTY Value AS System.Type GET _value
		
		CONSTRUCTOR(value AS System.Type)
			_value := value
		
	END CLASS
	
	/// <summary>
	/// This class exposes the namespace and globalclass in an assembly
	/// </summary>
	[AttributeUsage(AttributeTargets.Assembly)];
	SEALED CLASS ClassLibraryAttribute INHERIT Attribute
		PRIVATE _globalClassName AS STRING
		PRIVATE _defaultNameSpace AS STRING
		
		PROPERTY GlobalClassName AS STRING GET _globalClassName
		PROPERTY DefaultNameSpace AS STRING GET _defaultNameSpace
		
		CONSTRUCTOR(globalClassName AS STRING, defaultNameSpace AS STRING)
			_globalClassName := globalClassName
			_defaultNameSpace := defaultNameSpace
		
	END CLASS
	
	
	/// <summary>
	/// this class documents the parameter names for methods and functions
	/// with Clipper calling convention
	/// </summary>
	
	[AttributeUsage(AttributeTargets.Method)];
	SEALED CLASS ClipperCallingConventionAttribute INHERIT Attribute
		PRIVATE _parameterNames AS STRING[]
		
		PROPERTY ParameterNames AS STRING[] GET _parameterNames
		
		CONSTRUCTOR(parameterNames AS STRING[])
			_parameterNames := parameterNames
		
	END CLASS
	
	
	/// <summary>
	/// this class records the compiler version used to build an assembly
	/// </summary>
	[AttributeUsage(AttributeTargets.Assembly)];
		SEALED CLASS CompilerVersionAttribute INHERIT Attribute
		PRIVATE _version AS STRING
		
		PROPERTY Version AS STRING GET _version
		
		CONSTRUCTOR(version AS STRING)
			_version := version
		
	END CLASS
	
	
	/// <summary>
	/// this class is used to mark default parameter values in the middle of a parameter list
	/// Value is obvious
	/// Flag means:
	/// 0 = Regular .Net default value 
	/// 1 = NIL
	/// 2 = Date (value is LONG ticks, empty for NULL_DATE
	/// 3 = Symbol, value can be empty of a string
	/// 4 = PSZ, null = empty, or a string
	/// 5 = IntPtr (can be 0 for NullPtr)
	/// </summary>
	SEALED CLASS DefaultParameterValueAttribute INHERIT Attribute
		PRIVATE _value AS OBJECT
		PRIVATE _flag  AS INT
		
		PROPERTY Value AS OBJECT GET _value
		PROPERTY Flag  AS INT    GET _flag
		
		CONSTRUCTOR(value AS OBJECT, flag AS INT)
			_value := value
			_flag  := flag
		
	END CLASS
	
	
	/// <summary>
	/// this class records the compiler version used to build an assembly
	/// </summary>
	[AttributeUsage(AttributeTargets.Assembly)];
	SEALED CLASS ImplicitNamespaceAttribute INHERIT Attribute
		PRIVATE _namespace AS STRING
		
		PROPERTY Namespace AS STRING GET _namespace
		
		CONSTRUCTOR(namespace AS STRING)
			_namespace := namespace
		
	END CLASS
	
	
	/// <summary>
	/// this class is used to describe VOSTRUCT and UNION structures which have a different semantics
	/// AS actually means Struct PTR. IS means Struct
	/// Please note that the size assumes x86 (32 bits) OS.
	/// </summary>
	[AttributeUsage(AttributeTargets.Struct)];
	SEALED CLASS VoStructAttribute INHERIT Attribute
		PRIVATE _size				AS INT
		PRIVATE _largestMemberSize  AS INT
		
		PROPERTY Size				AS INT GET _size
		PROPERTY LargestMemberSize	AS INT GET _largestMemberSize
		
		CONSTRUCTOR(size AS INT, largestMemberSize AS INT)
			_size := size
			_largestMemberSize := largestMemberSize
		
	END CLASS
	
END NAMESPACE