//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//

/// <summary>
/// Return the absolute value of a strongly typed numeric expression, regardless of its sign.
/// </summary>
/// <param name="i"></param>
/// <returns>
/// </returns>
FUNCTION AbsInt(i AS LONGINT) AS LONG
	RETURN Math.Abs(i)

/// <summary>
/// Return the absolute value of a strongly typed numeric expression, regardless of its sign.
/// </summary>
/// <param name="li"></param>
/// <returns>
/// </returns>
FUNCTION AbsLong(li AS LONGINT) AS LONG
	RETURN Math.Abs(li)

/// <summary>
/// Return the absolute value of a strongly typed numeric expression, regardless of its sign.
/// </summary>
/// <param name="r4"></param>
/// <returns>
/// </returns>
FUNCTION AbsReal4(r4 AS REAL4) AS REAL4
	RETURN Math.Abs(r4)

/// <summary>
/// Return the absolute value of a strongly typed numeric expression, regardless of its sign.
/// </summary>
/// <param name="r8"></param>
/// <returns>
/// </returns>
FUNCTION AbsReal8(r8 AS REAL8) AS REAL8
	RETURN Math.Abs(r8)

/// <summary>
/// Return the absolute value of a strongly typed numeric expression, regardless of its sign.
/// </summary>
/// <param name="si"></param>
/// <returns>
/// </returns>
FUNCTION AbsShort(si AS SHORT) AS LONG
	RETURN Math.Abs(si)


/// <summary>
/// Return an uninitialized string of a specified size.
/// </summary>
/// <param name="dwSize"></param>
/// <returns>
/// </returns>
FUNCTION Buffer(dwSize AS DWORD) AS STRING
	/// THROW NotImplementedException{}
	RETURN String.Empty   

/// <summary>
/// Convert an ASCII code to a character value.
/// </summary>
/// <param name="dwChar"></param>
/// <returns>
/// </returns>
FUNCTION CHR(dwChar AS DWORD) AS STRING
	LOCAL buf := BYTE[]{1} AS BYTE[]
	buf[0+__ARRAYBASE__] := (BYTE) dwChar
	RETURN System.Text.Encoding:ASCII:GetString(buf)


/// <summary>
/// Return a description string for a DOS error number.
/// </summary>
/// <param name="nDosErr"></param>
/// <returns>
/// </returns>
FUNCTION DosErrString(nDosErr AS DWORD) AS STRING
	/// THROW NotImplementedException{}
	RETURN String.Empty   

/// <summary>
/// Convert a double word to a string containing a 32-bit unsigned integer.
/// </summary>
/// <param name="n"></param>
/// <returns>
/// </returns>
FUNCTION DW2Bin(n AS DWORD) AS STRING
	LOCAL byte__Array := BitConverter.GetBytes( n ) AS BYTE[]
	RETURN System.Text.Encoding.ASCII:GetString(byte__Array)

/// <summary>
/// Resize the dynamic memory pool to a specific number of pages.
/// </summary>
/// <param name="dwPages"></param>
/// <returns>
/// </returns>
FUNCTION DynSize(dwPages AS DWORD) AS DWORD
	/// THROW NotImplementedException{}
	RETURN 0   

/// <summary>
/// Return an error message associated with a system-generated error code.
/// </summary>
/// <param name="nGenCode"></param>
/// <returns>
/// </returns>
FUNCTION ErrString(nGenCode AS DWORD) AS STRING
	/// THROW NotImplementedException{}
	RETURN String.Empty   

/// <summary>
/// </summary>
/// <param name="nRetVal"></param>
/// <returns>
/// </returns>
FUNCTION ExitVOThread(nRetVal AS INT) AS VOID
	/// THROW NotImplementedException{}
	RETURN   


/// <summary>
/// Display file attributes as a string.
/// </summary>
/// <param name="nAttrib"></param>
/// <returns>
/// </returns>
FUNCTION FAttr2String(nAttrib AS DWORD) AS STRING
	/// THROW NotImplementedException{}
	RETURN String.Empty   


/// <summary>
/// </summary>
/// <param name="dwInst"></param>
/// <returns>
/// </returns>
FUNCTION NationInit(dwInst AS DWORD) AS INT
	/// THROW NotImplementedException{}
	RETURN 0   

/// <summary>
/// Exchange the right and left halves of a double word.
/// </summary>
/// <param name="li"></param>
/// <returns>
/// </returns>
FUNCTION SwapDWord(li AS DWORD) AS DWORD
RETURN	 (DWORD)((DWORD)((li & 0x0000ffff) << 16) | ((li >> 16) & 0x0000ffff))   

/// <summary>
/// Exchange the right and left halves of an integer.
/// </summary>
/// <param name="li"></param>
/// <returns>
/// </returns>
FUNCTION SwapInt(li AS LONG) AS LONG
	RETURN SwapLong(li) 

/// <summary>
/// Exchange the right and left halves of a long integer.
/// </summary>
/// <param name="li"></param>
/// <returns>
/// </returns>
FUNCTION SwapLong(li AS LONG) AS LONG
RETURN	 (LONG)((LONG)((li & 0x0000ffff) << 16) | ((li >> 16) & 0x0000ffff))

/// <summary>
/// Exchange the right and left halves of a short integer.
/// </summary>
/// <param name="si"></param>
/// <returns>
/// </returns>
FUNCTION SwapShort(si AS SHORT) AS SHORT
RETURN	 0 // (short)((short)((si & 0x00ff) << 8) | ((si >> 8) & 0x00ff))

/// <summary>
/// Exchange the right and left halves of a word.
/// </summary>
/// <param name="w"></param>
/// <returns>
/// </returns>
FUNCTION SwapWord(w AS WORD) AS WORD
RETURN	 (WORD)((WORD)((w & 0x00ff) << 8) | ((w >> 8) & 0x00ff))


/// <summary>
/// </summary>
/// <param name="dwType"></param>
/// <returns>
/// </returns>
FUNCTION TypeString(dwType AS DWORD) AS STRING
	/// THROW NotImplementedException{}
	RETURN String.Empty   

/// <summary>
/// Convert a word to a string containing a 16-bit unsigned integer.
/// </summary>
/// <param name="n"></param>
/// <returns>
/// </returns>
FUNCTION W2Bin(n AS WORD) AS STRING
	LOCAL byte__Array := BitConverter.GetBytes( n ) AS BYTE[]
	RETURN System.Text.Encoding.ASCII:GetString(byte__Array)    

/// <summary>
/// </summary>
/// <param name="hf"></param>
/// <returns>
/// </returns>
FUNCTION WriteAtomTable(hf AS DWORD) AS DWORD
	/// THROW NotImplementedException{}
	RETURN 0   
