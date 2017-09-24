//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//
using XSharp
	/// <summary>
	/// Return the absolute value of a numeric expression, regardless of its sign.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Abs(n AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Copy elements from one __Array to another.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="aDest"></param>
	/// <param name="nStart"></param>
	/// <param name="nCount"></param>
	/// <param name="nStartDest"></param>
	/// <returns>
	/// </returns>
	FUNCTION ACopy(a AS __Usual,aDest AS __Usual,nStart AS __Usual,nCount AS __Usual,nStartDest AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Calculate the arc cotangent of a number.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION ACot(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Fill a series of __Arrays with directory information.
	/// </summary>
	/// <param name="cPath"></param>
	/// <param name="aFNAME"></param>
	/// <param name="aFSIZE"></param>
	/// <param name="aFDATE"></param>
	/// <param name="aFTIME"></param>
	/// <param name="aFATTR"></param>
	/// <returns>
	/// </returns>
	FUNCTION ADir(cPath AS __Usual,aFNAME AS __Usual,aFSIZE AS __Usual,aFDATE AS __Usual,aFTIME AS __Usual,aFATTR AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Execute a code block for each element in an __Array.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="cb"></param>
	/// <param name="iStart"></param>
	/// <param name="iCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION AEval(a AS __Usual,cb AS __Usual,iStart AS __Usual,iCount AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Execute a code block for each element in an __Array and assign the return value to each element in the __Array.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="cb"></param>
	/// <param name="iStart"></param>
	/// <param name="iCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION AEvalA(a AS __Usual,cb AS __Usual,iStart AS __Usual,iCount AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Execute a code block for each element in an __Array.
	/// </summary>
	/// <param name="c"></param>
	/// <param name="cod"></param>
	/// <param name="nStart"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION AEvalOld(c AS __Usual,cod AS __Usual,nStart AS __Usual,nCount AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Fill __Array elements with a specified value.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="x"></param>
	/// <param name="iStart"></param>
	/// <param name="iCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION AFill(a AS __Usual,x AS __Usual,iStart AS __Usual,iCount AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Return the alias of the current work area as a string.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Alias0() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return the alias of the current work area as a __Symbol.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Alias0Sym() AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION AllocInstance(symClassName AS __Usual) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION AllocInstanceStatic(symClassName AS __Usual) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION AllowCollectThread() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// Either determine whether the Debugger can be invoked manually or programmatically define a breakpoint in an application.
	/// </summary>
	/// <param name="uMode"></param>
	/// <returns>
	/// </returns>
	FUNCTION AltD(uMode AS __Usual) AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// </summary>
	/// <param name="x"></param>
	/// <param name="nType"></param>
	/// <returns>
	/// </returns>
	FUNCTION Any2Usual(x AS __Usual,nType AS DWORD) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// To create an __Array and fill its elements with a default value.
	/// </summary>
	/// <param name="x"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION AReplicate(x AS __Usual,nCount AS DWORD) AS __Array
		local a:=__Array{(int)nCount} as __Array
		//Todo
		//__Array.ArrayFill(a,x)
	RETURN a

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION ArgCount() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Create an empty __Array.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION __ArrayBuild() AS __Array
	RETURN __Array{}

	/// <summary>
	/// Create an uninitialized __Array with the specified number of elements and dimensions.
	/// </summary>
	/// <param name="nDim"></param>
	/// <returns>
	/// </returns>
	FUNCTION __ArrayNew(nDim AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Invoke a method for every element in an __Array of objects.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="symMethod"></param>
	/// <returns>
	/// </returns>
	FUNCTION ASend(a AS __Usual,symMethod AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Invoke a method of a specific class for every element in an __Array of objects.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="symMethod"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION ASendClass(a AS __Usual,symMethod AS __Usual,symClassName AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Sort an __Array.
	/// </summary>
	/// <param name="a"></param>
	/// <param name="iStart"></param>
	/// <param name="iCount"></param>
	/// <param name="cb"></param>
	/// <returns>
	/// </returns>
	FUNCTION ASort(a AS __Usual,iStart AS __Usual,iCount AS __Usual,cb AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Convert a value to a right-padded string.
	/// </summary>
	/// <param name="u"></param>
	/// <param name="dwLen"></param>
	/// <returns>
	/// </returns>
	FUNCTION AsPadr(u AS __Usual,dwLen AS DWORD) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Convert a value to a string.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION AsString(u AS __Usual) AS STRING
	RETURN (string) u   

	/// <summary>
	/// Convert a string or a __Psz to a __Symbol.
	/// </summary>
	/// <param name="u">The __Usual holding a string or __Psz</param>
	/// <returns>
	/// The __Symbol representing the given string or __Psz.
	/// </returns>
	FUNCTION As__Symbol(u AS __Usual) AS __Symbol
	RETURN __Symbol{(string)u}   

	/// <summary>
	/// Calculate the arc tangent of a number.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION ATan(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	[System.Obsolete("Function is deprecated")];
	FUNCTION AtomExit() AS DWORD
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	[System.Obsolete("Function is deprecated")];
	FUNCTION AtomInit() AS DWORD
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	[System.Obsolete("Function is deprecated")];
	FUNCTION AtomTableGetDirty() AS LOGIC
	RETURN FALSE   

	/// <summary>
	/// </summary>
	/// <param name="f"></param>
	/// <returns>
	/// </returns>
	[System.Obsolete("Function is deprecated")];
	FUNCTION AtomTableSetDirty(f AS LOGIC) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	[System.Obsolete("Function is deprecated")];
	FUNCTION AxitCalled(o AS OBJECT) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is between two other values.
	/// </summary>
	/// <param name="x">Value which should be compared.</param>
	/// <param name="y">Lower value to compare against.</param>
	/// <param name="z">Upper value to compare against.</param>
	/// <returns>
	/// True if x is >= y and <= z otherwise false.
	/// </returns>
	FUNCTION Between(x AS __Usual,y AS __Usual,z AS __Usual) AS LOGIC
	RETURN ((x>=y) && (x<=z))

	/// <summary>
	/// Check whether a break occurs within the BEGIN SEQUENCE...END construct.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION CanBreak() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Round a number up to the next highest integer.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Ceil(n AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Determine if an object is an instance of a particular class.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION CheckInstanceOf(o AS OBJECT,symClassName AS __Symbol) AS LOGIC
	RETURN o:GetType():Name == symClassName

	/// <summary>
	/// Return the number of classes available to your application.
	/// </summary>
	/// <returns>
	/// The number of available classes.
	/// </returns>
	FUNCTION ClassCount() AS DWORD
	RETURN ClassList():Length

	/// <summary>
	/// Return an __Array of __Symbols corresponding to the classes available to your application.
	/// </summary>
	/// <returns>
	/// Returns an __Array with the name of all available classes
	/// </returns>
	FUNCTION ClassList() AS __Array
		local classes    := __Array{} as __Array
		local assemblies := System.AppDomain.CurrentDomain:GetAssemblies() as System.Reflection.Assembly[]
		foreach assembly as System.Reflection.Assembly in assemblies
			local types := assembly:GetTypes() as System.Type[]
			foreach type as System.Type in types
				classes:Add(type:Name)
			next
		next
	RETURN classes

	/// <summary>
	/// Get the class name of an object.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION ClassName(o AS OBJECT) AS __Symbol
	RETURN As__Symbol(o:GetType():Name)

	/// <summary>
	/// Get the class hierarchy of an object.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION ClassTree(o AS OBJECT) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Call the garbage collector if a watermark is reached.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Collect() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// Count the number of garbage collections performed by the system.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION CollectCount() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Call the garbage collector.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION CollectForced() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION CompString() AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Calculate the cosine of a number.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Cos(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Calculate the cotangent of a value.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Cot(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the number of arguments that a code block is expecting.
	/// </summary>
	/// <param name="uCodeBlock"></param>
	/// <returns>
	/// </returns>
	FUNCTION CParamCount(uCodeBlock AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Retrieve information about the current dynamic memory status (garbage collector entries).
	/// </summary>
	/// <param name="pDump"></param>
	/// <param name="nValType"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION CreateGCDump(pDump AS _GCDUMP,nValType AS DWORD) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Create an object.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION CreateInstance(symClassName AS __Usual) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Create a static object.
	/// </summary>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION CreateInstanceStatic(symClassName AS __Usual) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symMethod"></param>
	/// <returns>
	/// </returns>
	FUNCTION CSend(o AS __Usual,symMethod AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return the current Windows directory.
	/// </summary>
	/// <param name="cDisk"></param>
	/// <returns>
	/// </returns>
	FUNCTION CurDir(cDisk AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return the current Windows drive.
	/// </summary>
	/// <returns>
	/// Return the letter of the current drive without colon
	/// </returns>
	FUNCTION CurDrive() AS STRING
		local currentDirectory := System.IO.Directory.GetCurrentDirectory() as string
		local drive := "" as string
		local position as int

		position := currentDirectory:IndexOf(System.IO.Path.VolumeSeparatorChar)
		if position > 0
			drive := currentDirectory:Substring(0,position)
		endif
	return drive

	/// <summary>
	/// Assign a default value to a __Usual._NIL argument.
	/// </summary>
	/// <param name="xRef"></param>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION Default(xRef AS __Usual,x AS __Usual) AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DefaultDirInit() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// Create a descending order key value.
	/// </summary>
	/// <param name="uValue"></param>
	/// <returns>
	/// </returns>
	FUNCTION Descend(uValue AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="uValue"></param>
	/// <returns>
	/// </returns>
	FUNCTION DescendA(uValue AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Create an __Array of directory and file information.
	/// </summary>
	/// <param name="cPath"></param>
	/// <param name="xAttr"></param>
	/// <returns>
	/// </returns>
	FUNCTION Directory(cPath AS __Usual,xAttr AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Return the space available on the current disk drive.
	/// </summary>
	/// <param name="cDisk"></param>
	/// <returns>
	/// </returns>
	FUNCTION DiskFree() AS __Usual
	RETURN DiskFree(CurDrive())

	/// <summary>
	/// Return the space available on a specified disk.
	/// </summary>
	/// <param name="cDisk">The drivename to get the free space from.</param>
	/// <returns>
	/// The free space on the specified disk drive.
	/// </returns>	   
	FUNCTION DiskFree(cDisk AS __Usual) AS __Usual
	RETURN System.IO.DriveInfo{cDisk}:TotalFreeSpace

	/// <summary>
	/// Return the current Windows drive.
	/// </summary>
	/// <returns>
	/// The current windows drive.
	/// </returns>
	FUNCTION DiskName() AS STRING
	RETURN CurDrive()

	/// <summary>
	/// Return the capacity of the current disk.
	/// </summary>
	/// <returns>
	/// The capacity of the current disk.
	/// </returns>
	FUNCTION DiskSpace() AS __Usual
	RETURN DiskSpace(CurDrive())

	/// <summary>
	/// Return the capacity of the specified disk.
	/// </summary>
	/// <param name="nDisk"></param>
	/// <returns>
	/// </returns>
	FUNCTION DiskSpace(nDisk AS __Usual) AS __Usual
	RETURN System.IO.DriveInfo{nDisk}:TotalSize

	/// <summary>
	/// Return the last DOS error code associated with an activation of the runtime error block.
	/// </summary>
	/// <param name="nSet"></param>
	/// <returns>
	/// </returns>
	FUNCTION DosError(nSet AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynAllocEnd() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynAllocStart() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Get a description of the error which was discovered by an internal function that is used by the system to check dynamic memory for consistency.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynCheckError() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynCheckErrorInfo() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynCheckErrorSym() AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// Return the number of bytes available for dynamic memory allocation.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynInfoFree() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the number of bytes of contiguous memory available for dynamic memory allocation.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynInfoMax() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the size of dynamic memory in 64 KB segments.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynInfoSize() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the number of bytes of dynamic memory in use.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynInfoUsed() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Lock dynamic memory and prevent the Garbage Collector from activating.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynLock() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Protect dynamic memory that is not currently in use.
	/// </summary>
	/// <param name="lSet"></param>
	/// <returns>
	/// </returns>
	FUNCTION DynProtect(lSet AS LOGIC) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Shrink the dynamic memory pool to its minimum size.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynShrink() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynStack2__Array() AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Copy a dynamic object to static allocated memory.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION DynToOldSpace(u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Copy a typed dynamic object to static allocated memory.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION DynToOldSpaceObject(o AS OBJECT) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Unlock dynamic memory and restart the Garbage Collector.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION DynUnLock() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Determine if the result of an expression is empty.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION Empty(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Make sure a variable is a numeric.
	/// </summary>
	/// <param name="refu"></param>
	/// <returns>
	/// </returns>
	FUNCTION EnforceNumeric(refu AS __Usual) AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// Make sure a variable is of a certain type.
	/// </summary>
	/// <param name="refu"></param>
	/// <param name="nType"></param>
	/// <returns>
	/// </returns>
	FUNCTION EnforceType(refu AS __Usual,nType AS DWORD) AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION EnterCGCSection() AS VOID
		/// THROW NotImplementedException{}
	RETURN  

	/// <summary>
	/// Return and optionally change the code block that is executed when a runtime error occurs.
	/// </summary>
	/// <param name="cobError"></param>
	/// <returns>
	/// </returns>
	FUNCTION ErrorBlock(cobError AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Call the currently installed error function and create a new error object.
	/// </summary>
	/// <param name="ptrERRINFO"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION ErrorBuild(ptrERRINFO AS IntPtr) AS ERROR
		/// THROW NotImplementedException{}
	RETURN  Error{}

	/// <summary>
	/// Return the number of errors that have occurred during program execution.
	/// </summary>
	/// <param name="dw"></param>
	/// <returns>
	/// </returns>
	FUNCTION ErrorCount(dw AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Call the currently installed error function and error block.
	/// </summary>
	/// <param name="ptrERRINFO"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION ErrorExec(ptrERRINFO AS IntPtr) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Install an error function.
	/// </summary>
	/// <param name="ptrFunc"></param>
	/// <returns>
	/// </returns>
	FUNCTION ErrorFunc(ptrFunc AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Retrieve and optionally set the <%APP%> return code.
	/// </summary>
	/// <param name="dw"></param>
	/// <returns>
	/// </returns>
	FUNCTION ErrorLevel(dw AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Evaluate a code block or an object's Eval() method.
	/// </summary>
	/// <param name="cob"></param>
	/// <returns>
	/// </returns>
	FUNCTION Eval(cob AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Calculate the numeric value of a natural logarithm.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION EXP(x AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="uSelect"></param>
	/// <param name="symField"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldGetSelect(uSelect AS __Usual,symField AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="uSelect"></param>
	/// <param name="symField"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION FieldPutSelect(uSelect AS __Usual,symField AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="f"></param>
	/// <returns>
	/// </returns>
	FUNCTION __VOFloat2Long(f AS __Usual) AS LONG
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Round a number down to the next lowest integer.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION Floor(x AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return the name of the file found by FFCount(), FFirst(), or FNext().
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FName() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Find the next file that matches the file previously found by FFirst().
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FNext() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Return the name and path of the file that was used by FXOpen() or File().
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FPathName() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Write a string, a carriage-return character, and a linefeed character to an open file.
	/// </summary>
	/// <param name="pFile"></param>
	/// <param name="c"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION FPutS(pFile AS __Usual,c AS __Usual,nCount AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Read a line from an open file.
	/// </summary>
	/// <param name="pFile"></param>
	/// <param name="nBuffLen"></param>
	/// <returns>
	/// </returns>
	FUNCTION FReadLine(pFile AS __Usual,nBuffLen AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// To free objects that have been created using the CreateInstanceStatic( ) function.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION FreeStaticObject(o AS OBJECT) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Set the file pointer to a new position.
	/// </summary>
	/// <param name="nFile"></param>
	/// <param name="nOffset"></param>
	/// <param name="nOrigin"></param>
	/// <returns>
	/// </returns>
	FUNCTION FSeek(nFile AS __Usual,nOffset AS __Usual,nOrigin AS __Usual) AS LONG
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the size of the file found by FFCount(), FFirst(), or FNext().
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FSize() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the time stamp of the file found by FFCount(), FFirst(), or FNext().
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FTime() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FunctionCount() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION FunctionList() AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Write a string to an open file.
	/// </summary>
	/// <param name="pHandle"></param>
	/// <param name="c"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION FWrite(pHandle AS __Usual,c AS __Usual,nCount AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Write a string, a carriage-return character, and a linefeed character to an open file.
	/// </summary>
	/// <param name="pFile"></param>
	/// <param name="c"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION FWriteLine(pFile AS __Usual,c AS __Usual,nCount AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Write a string to an open file, with SetAnsi() dependency.
	/// </summary>
	/// <param name="pHandle"></param>
	/// <param name="c"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION FWriteText(pHandle AS __Usual,c AS __Usual,nCount AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Check whether the application is in a garbage collection phase.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION InCollect() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Return and optionally change the setting that determines whether to use the High Performance (HP) locking schema for newly created .NTX files.
	/// </summary>
	/// <param name="lSet"></param>
	/// <returns>
	/// </returns>
	FUNCTION IndexHPLock(lSet AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Indicate whether the first expression in a series is repeated later in the series.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION InList(u AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Indicate whether the first expression in a series is repeated in the exact same form later in the series.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION InListExact(u AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Truncate or 
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Integer(n AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Check whether a particular access method can be sent to an object.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symAccessName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsAccess(o AS OBJECT,symAccessName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is an __Array.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION Is__Array(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check whether a particular assign method can be sent to an object.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symAssignName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsAssign(o AS OBJECT,symAssignName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a code block.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsCodeBlock(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a __VODate.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsDate(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a __VOFloat.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION Is__VOFloat(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if an object is an instance of a class.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsInstanceOf(o AS OBJECT,symClassName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if an object inside a __Usual is an instance of a class.
	/// </summary>
	/// <param name="oX"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsInstanceOfUsual(oX AS __Usual,symClassName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a logical.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsLogic(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a LONGINT.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsLong(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check whether a particular method can be sent to an object.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symMethodName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsMethod(o AS OBJECT,symMethodName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check whether a particular method can be sent to an object inside a __Usual.
	/// </summary>
	/// <param name="oX"></param>
	/// <param name="symMethodName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsMethodUsual(oX AS __Usual,symMethodName AS __Symbol) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is __Usual._NIL.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsNil(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a numeric.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsNumeric(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is an object.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsObject(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check to see if a dynamic object is static.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsOldSpace(u AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Check to see if a typed dynamic object is static.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsOldSpaceObject(o AS OBJECT) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a pointer.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsPtr(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a string.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsString(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if a value is a __Symbol.
	/// </summary>
	/// <param name="uVal"></param>
	/// <returns>
	/// </returns>
	FUNCTION Is__Symbol(uVal AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine if the given object is a valid VO Object.
	/// </summary>
	/// <param name="oObject"></param>
	/// <returns>
	/// </returns>
	FUNCTION IsVOObject(oObject AS OBJECT) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Return the contents of an exported instance variable.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarGet(o AS OBJECT,symIvar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Get information about how a particular instance variable (or access method) was declared.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarGetInfo(o AS OBJECT,symIVar AS __Symbol) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the contents of an instance variable.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarGetSelf(o AS OBJECT,symIvar AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarGetSuper(o AS OBJECT,symIvar AS __Symbol,symClassName AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Store all instance variables of an object into an __Array.
	/// </summary>
	/// <param name="pObject"></param>
	/// <returns>
	/// </returns>
	FUNCTION IvarList(pObject AS OBJECT) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Assign a value to an exported instance variable.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarPut(o AS OBJECT,symIvar AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Get information about how a particular instance variable (or assign method) was declared.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIVar"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarPutInfo(o AS OBJECT,symIVar AS __Symbol) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Assign a value to an instance variable.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarPutSelf(o AS OBJECT,symIvar AS __Symbol,u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symIvar"></param>
	/// <param name="u"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION IVarPutSuper(o AS OBJECT,symIvar AS __Symbol,u AS __Usual,symClassName AS __Symbol) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION KidStackFree() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION KidStackSize() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION KillAtomTable() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// Branch out of a BEGIN SEQUENCE...END construct.
	/// </summary>
	/// <param name="uError"></param>
	/// <returns>
	/// </returns>
	FUNCTION LabelJump(uError AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Functional form of END SEQUENCE.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION LabelPop() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION LeaveCGCSection() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// Return the length of a string or an __Array.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION Len(u AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <param name="ptrLine"></param>
	/// <param name="nLen"></param>
	/// <param name="nLimit"></param>
	/// <param name="nTabSize"></param>
	/// <param name="lWrap"></param>
	/// <returns>
	/// </returns>
	FUNCTION LineLen(ptrLine AS BYTE[],nLen AS DWORD,nLimit AS DWORD,nTabSize AS DWORD,lWrap AS LOGIC) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Look up an identifier in a string table and returns its corresponding string.
	/// </summary>
	/// <param name="cDef"></param>
	/// <param name="id"></param>
	/// <param name="xModule"></param>
	/// <returns>
	/// </returns>
	FUNCTION LoadResString(cDef AS __Usual,id AS __Usual,xModule AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION LockTries(n AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Calculate the natural logarithm of a numeric value.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION LOG(x AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Calculate the common logarithm of a numeric value.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Log10(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Convert a logical value to a string containing an 8-bit logical value.
	/// </summary>
	/// <param name="l"></param>
	/// <returns>
	/// </returns>
	FUNCTION Logic2Bin(l AS LOGIC) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Restore the stack environment and return control to the point immediately following the corresponding SetJmp() call.
	/// </summary>
	/// <param name="strucMark"></param>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION LongJmp(strucMark AS _JMP_BUF,n AS INT) AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// Convert a logical value to a string.
	/// </summary>
	/// <param name="l"></param>
	/// <returns>
	/// </returns>
	FUNCTION LTOC(l AS LOGIC) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MathCheck() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MathInit() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// Return the larger of 2 values.
	/// </summary>
	/// <param name="u1"></param>
	/// <param name="u2"></param>
	/// <returns>
	/// </returns>
	FUNCTION Max(u1 AS __Usual,u2 AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Determine the number of __Symbols in the atom table.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MaxAtom() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return and optionally change the setting that determines whether logical shortcutting is used in macro expression evaluation.
	/// </summary>
	/// <param name="l"></param>
	/// <returns>
	/// </returns>
	FUNCTION MCSHORT(l AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemCompact() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemExit() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Open up a new memory group.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemGrpOpen() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemInit() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Report the total number of bytes used by other memory manager functions.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemTotal() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Walk through the memory system, checking for validity.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MemWalk() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Create a class list in the form of an __Array for the specified object.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION MethodList(o AS OBJECT) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Return the smaller of 2 values.
	/// </summary>
	/// <param name="u1"></param>
	/// <param name="u2"></param>
	/// <returns>
	/// </returns>
	FUNCTION Min(u1 AS __Usual,u2 AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return the line and column position of a character in a formatted string.
	/// </summary>
	/// <param name="cMemo"></param>
	/// <param name="nWidth"></param>
	/// <param name="nPos"></param>
	/// <param name="nTabSize"></param>
	/// <param name="lWrap"></param>
	/// <returns>
	/// </returns>
	FUNCTION MPosToLc(cMemo AS __Usual,nWidth AS __Usual,nPos AS __Usual,nTabSize AS __Usual,lWrap AS __Usual) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MyDal() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MyDal__VOFloat() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MyDal__VOFloatFSTP() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION MyDalPtr() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NationExit() AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NClear() AS VOID
		/// THROW NotImplementedException{}
	RETURN 

	/// <summary>
	/// Detect a concurrency conflict.
	/// </summary>
	/// <param name="lSet"></param>
	/// <returns>
	/// </returns>
	FUNCTION NetErr(lSet AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Identify the current workstation.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NetName() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return and optionally change the setting that determines whether to use the new locking offset of -1 (0xFFFFFFFF) for .NTX files.
	/// </summary>
	/// <param name="lSet"></param>
	/// <returns>
	/// </returns>
	FUNCTION NewIndexLock(lSet AS __Usual) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Return the setting that determines whether to use the new locking offset of -1 (0xFFFFFFFF) for .NTX files.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NewLocks() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Identify an invalid method call.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NoMethod() AS __Symbol
		/// THROW NotImplementedException{}
	RETURN NULL_SYMBOL   

	/// <summary>
	/// Convert a numeric expression to a left-trimmed string.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION NTrim(n AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Identify a character set by its nation driver.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION NVersion() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Convert the values of an object's instance variables to an __Array.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION Object2__Array(o AS OBJECT) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION OClone(o AS OBJECT) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Free up static memory created by DynToOldSpace().
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION OldSpaceFree(u AS __Usual) AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION OldSpaceFreeObject(o AS OBJECT) AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION OMemSize(o AS OBJECT) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return a multidimensional __Array of all object-oriented programming __Symbols that constitute the class.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION OOPTree(o AS OBJECT) AS __Array
		/// THROW NotImplementedException{}
	RETURN NULL_ARRAY   

	/// <summary>
	/// Return the operating system name.
	/// </summary>
	/// <param name="lExtended"></param>
	/// <returns>
	/// </returns>
	FUNCTION OS(lExtended AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Pad character, numeric, and __VODate values with fill characters on the right.
	/// </summary>
	/// <param name="cSource"></param>
	/// <param name="nLen"></param>
	/// <param name="cPad"></param>
	/// <returns>
	/// </returns>
	FUNCTION Pad(cSource AS __Usual,nLen AS __Usual,cPad AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Pad character, numeric, and __VODate values with fill characters on both the right and left.
	/// </summary>
	/// <param name="cSource"></param>
	/// <param name="nLen"></param>
	/// <param name="cPad"></param>
	/// <returns>
	/// </returns>
	FUNCTION PadC(cSource AS __Usual,nLen AS __Usual,cPad AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Pad character, numeric, and __VODate values with fill characters on the left.
	/// </summary>
	/// <param name="cSource"></param>
	/// <param name="nLen"></param>
	/// <param name="cPad"></param>
	/// <returns>
	/// </returns>
	FUNCTION PadL(cSource AS __Usual,nLen AS __Usual,cPad AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Pad character, numeric, and __VODate values with fill characters on the right.
	/// </summary>
	/// <param name="cSource"></param>
	/// <param name="nLen"></param>
	/// <param name="cPad"></param>
	/// <returns>
	/// </returns>
	FUNCTION PadR(cSource AS __Usual,nLen AS __Usual,cPad AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Get a particular color from a user-defined palette.
	/// </summary>
	/// <param name="bR"></param>
	/// <param name="bG"></param>
	/// <param name="bB"></param>
	/// <returns>
	/// </returns>
	FUNCTION PaletteRGB(bR AS __Usual,bG AS __Usual,bB AS BYTE) AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Display a system modal dialog box to pause the current application.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Pause() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Duplicate a polymorphic variable.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION PClone(x AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Return the position of the last argument in the list of arguments passed when a procedure or function is invoked.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION PCount() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Raise the first argument to the numeric power specified by the second argument.
	/// </summary>
	/// <param name="x"></param>
	/// <param name="y"></param>
	/// <returns>
	/// </returns>
	FUNCTION POW(x AS __Usual,y AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the name of the activated module.
	/// </summary>
	/// <param name="dwActivation"></param>
	/// <returns>
	/// </returns>
	FUNCTION ProcFile(dwActivation AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return the source line number of the last line executed in an activated entity.
	/// </summary>
	/// <param name="dwActivation"></param>
	/// <returns>
	/// </returns>
	FUNCTION ProcLine(dwActivation AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return a random number between 0 and 1.
	/// </summary>
	/// <param name="nSeed"></param>
	/// <returns>
	/// </returns>
	FUNCTION Rand(nSeed AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION ReDal() AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// Register an object so that it receives an Axit message before being destroyed by the garbage collector.
	/// </summary>
	/// <param name="oSource"></param>
	/// <returns>
	/// </returns>
	FUNCTION RegisterAxit(oSource AS OBJECT) AS VOID
		/// THROW NotImplementedException{}
	RETURN 

	/// <summary>
	/// Get a particular Windows color.
	/// </summary>
	/// <param name="bR"></param>
	/// <param name="bG"></param>
	/// <param name="bB"></param>
	/// <returns>
	/// </returns>
	FUNCTION RGB(bR AS __Usual,bG AS __Usual,bB AS BYTE) AS INT
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Round a number to a specified number of digits.
	/// </summary>
	/// <param name="n"></param>
	/// <param name="iDec"></param>
	/// <returns>
	/// </returns>
	FUNCTION Round(n AS __Usual,iDec AS INT) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION RTExit() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the number of seconds that have elapsed since midnight.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Seconds() AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Invoke a method.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symMethod"></param>
	/// <returns>
	/// </returns>
	FUNCTION Send(o AS __Usual,symMethod AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Invoke a method with a specified class.
	/// </summary>
	/// <param name="o"></param>
	/// <param name="symMethod"></param>
	/// <param name="symClassName"></param>
	/// <returns>
	/// </returns>
	FUNCTION SendClass(o AS __Usual,symMethod AS __Usual,symClassName AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Execute a code block for each of the individual characters in a string.
	/// </summary>
	/// <param name="c"></param>
	/// <param name="cod"></param>
	/// <param name="nStart"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION SEval(c AS __Usual,cod AS __Usual,nStart AS __Usual,nCount AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Execute a code block for each of the individual characters in a string, changing the contents of the argument as well as the return value.
	/// </summary>
	/// <param name="c"></param>
	/// <param name="cod"></param>
	/// <param name="nStart"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION SEvalA(c AS __Usual,cod AS __Usual,nStart AS __Usual,nCount AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Calculate the sine of a number.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Sin(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the square root of a positive number.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION SQRT(x AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Convert a numeric expression to a string.
	/// </summary>
	/// <param name="n"></param>
	/// <param name="nLen"></param>
	/// <param name="nDec"></param>
	/// <returns>
	/// </returns>
	FUNCTION Str(n AS __Usual,nLen AS __Usual,nDec AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Search and replace characters within a string.
	/// </summary>
	/// <param name="c"></param>
	/// <param name="cSearch"></param>
	/// <param name="cReplace"></param>
	/// <param name="iStart"></param>
	/// <param name="nCount"></param>
	/// <returns>
	/// </returns>
	FUNCTION StrTran(c AS __Usual,cSearch AS __Usual,cReplace AS __Usual,iStart AS __Usual,nCount AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Convert a numeric expression to a string and pad it with leading zeroes instead of blanks.
	/// </summary>
	/// <param name="n"></param>
	/// <param name="iLen"></param>
	/// <param name="iDec"></param>
	/// <returns>
	/// </returns>
	FUNCTION StrZero(n AS __Usual,iLen AS __Usual,iDec AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <param name="c"></param>
	/// <param name="iStart"></param>
	/// <param name="wLen"></param>
	/// <returns>
	/// </returns>
	FUNCTION SubS(c AS __Usual,iStart AS __Usual,wLen AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Extract a substring from a string.
	/// </summary>
	/// <param name="c"></param>
	/// <param name="iStart"></param>
	/// <param name="wLen"></param>
	/// <returns>
	/// </returns>
	FUNCTION SubStr(c AS __Usual,iStart AS __Usual,wLen AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Install a system-wide object that receives all messages being sent to other data types.
	/// </summary>
	/// <param name="o"></param>
	/// <returns>
	/// </returns>
	FUNCTION SysObject(o AS __Usual) AS OBJECT
		/// THROW NotImplementedException{}
	RETURN NULL_OBJECT   

	/// <summary>
	/// Calculate the tangent of a number.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION Tan(n AS __Usual) AS __VOFloat
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the system time in a format determined by various international settings.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Time() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return the system time in 24-hour format.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Time24() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Return the system __VODate as a __VODate value.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Today() AS __VODate
		/// THROW NotImplementedException{}
	RETURN (__VODate)0   

	/// <summary>
	/// Convert a number to a word.
	/// </summary>
	/// <param name="n"></param>
	/// <returns>
	/// </returns>
	FUNCTION ToWord(n AS __Usual) AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Convert any value into a formatted string.
	/// </summary>
	/// <param name="exp"></param>
	/// <param name="p"></param>
	/// <returns>
	/// </returns>
	FUNCTION Transform(exp AS __Usual,p AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Convert a specified number of seconds to a time string.
	/// </summary>
	/// <param name="uSeconds"></param>
	/// <returns>
	/// </returns>
	FUNCTION TString(uSeconds AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Terminate the registration of an object that has been registered with RegisterAxit().
	/// </summary>
	/// <param name="oSource"></param>
	/// <returns>
	/// </returns>
	FUNCTION UnRegisterAxit(oSource AS OBJECT) AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Determine whether a database file is open.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Used() AS LOGIC
		/// THROW NotImplementedException{}
	RETURN FALSE   

	/// <summary>
	/// Access contents of an address, whether it is passed by reference or not.
	/// </summary>
	/// <param name="u"></param>
	/// <returns>
	/// </returns>
	FUNCTION UsualVal(u AS __Usual) AS __Usual
		/// THROW NotImplementedException{}
	RETURN __Usual._NIL   

	/// <summary>
	/// Determine the data type of an expression.
	/// </summary>
	/// <param name="x"></param>
	/// <returns>
	/// </returns>
	FUNCTION ValType(x AS __Usual) AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// Returns the version of <%APP%> you are using.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION Version() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   

	/// <summary>
	/// </summary>
	/// <param name="lpCriticalSection"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION VOEnterCriticalSection(lpCriticalSection AS _WINRTL_CRITICAL_SECTION) AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <param name="lpCriticalSection"></param>
	/// <returns>
	/// </returns>
	[Obsolete];
	FUNCTION VOLeaveCriticalSection(lpCriticalSection AS _WINRTL_CRITICAL_SECTION) AS VOID
		/// THROW NotImplementedException{}
	RETURN

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION WagnerExit() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION WagnerInit() AS DWORD
		/// THROW NotImplementedException{}
	RETURN 0   

	/// <summary>
	/// Return the currently selected working directory.
	/// </summary>
	/// <returns>
	/// </returns>
	FUNCTION WorkDir() AS STRING
		/// THROW NotImplementedException{}
	RETURN String.Empty   



/// <summary>
/// Sound a speaker tone for a specified frequency and duration.
/// </summary>
/// <param name="dwFreq"></param>
/// <param name="dwDur"></param>
/// <returns>
/// </returns>
FUNCTION Tone(dwFreq AS DWORD,dwDur AS DWORD) AS __Usual
	System.Media.SystemSounds.Beep:Play()
RETURN __Usual._NIL   
