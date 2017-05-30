﻿//
// Copyright (c) XSharp B.V.  All Rights Reserved.  
// Licensed under the Apache License, Version 2.0.  
// See License.txt in the project root for license information.
//

USING System
USING System.Collections.Generic
USING System.Text
using AdvantageClientEngine



// Return the AXS locking status
FUNCTION AX_AXSLocking( ) AS LOGIC 
    RETURN AX_RddHelper(ACE._SET_AXSLOCKING)

// Return and set the AXS locking status
FUNCTION AX_AXSLocking( bMode AS LOGIC) AS LOGIC 
    RETURN AX_RddHelper(ACE._SET_AXSLOCKING, bMode)


FUNCTION AX_BLOB2File( cFileName AS STRING, cFieldName AS STRING ) AS LOGIC // copy a BLOB to a file
    LOCAL hTable AS DWORD
    LOCAL ulRetCode AS DWORD

    hTable := AX_GetAceTableHandle()
    ulRetCode := DBFAXSAdsBinaryToFile( hTable, cFieldName , cFileName )
    RETURN ( ulRetCode == 0 )

FUNCTION AX_File2BLOB( cFileName AS STRING, cFieldName AS STRING ) AS LOGIC // copy a file into a BLOB
    LOCAL hTable AS DWORD
    LOCAL ulRetCode AS DWORD

    hTable := AX_GetAceTableHandle()
    ulRetCode := DBFAXSAdsFileToBinary( hTable, cFieldName , 6 , cFileName )
    RETURN ( ulRetCode = 0 )


FUNCTION AX_GetAceIndexHandle( uIndexFile as OBJECT, uOrder as OBJECT) AS DWORD
    // Returns an  index handle for the current workarea.  This handle can be used
    // to call the Advantage Client Engine directly.
    // Returns a 0 if there is a problem or if no index was found.

    // uIndexFile -- filename or NIL
    // uOrder -- order name, number, or NIL
    RETURN (DWORD) DBORDERINFO( ACE.DBOI_GET_ACE_INDEX_HANDLE, uIndexFile, uOrder )



FUNCTION AX_GetAceStmtHandle() AS DWORD
    // Returns the statement handle for the current workarea.  This handle can be used
    // to call the Advantage Client Engine directly.  Only for use with the AXSQL RDDs.
    // Returns a 0 if there is a problem.
    RETURN (DWORD) DBINFO( ACE.DBI_GET_ACE_STMT_HANDLE )

FUNCTION AX_GetAceTableHandle() AS DWORD
    // Returns the table handle for the current workarea.  This handle can be used
    // to call the Advantage Client Engine directly.
    // Returns a 0 if there is a problem.
    RETURN (DWORD) DBINFO( ACE.DBI_GET_ACE_TABLE_HANDLE )

FUNCTION AX_IsServerLoaded( cFileName AS STRING ) AS LOGIC // Return .T. if Advantage is loaded.
    // cFileName must start with a drive letter ("X:\") or a UNC path ("\\server\volume\path\")
    LOCAL usLoaded AS WORD
    usLoaded := 0
    DBFAXSAdsIsServerLoaded  (  cFileName , REF usLoaded )
    RETURN ( usLoaded = 2 .OR. usLoaded = 4 )


FUNCTION AX_PercentIndexed() AS INT // Return the percentage of keys added to a currently building index
    RETURN (INT) DBORDERINFO(  ACE.DBOI_AXS_PERCENT_INDEXED )


// Return the AXS Rights Checking status
FUNCTION AX_RightsCheck( ) AS LOGIC 
    RETURN AX_RddHelper(ACE._SET_RIGHTSCHECKING)

// Return and set the AXS Rights Checking status
FUNCTION AX_RightsCheck( bMode AS LOGIC) AS LOGIC 
    RETURN AX_RddHelper(ACE._SET_RIGHTSCHECKING, bMode)

FUNCTION AX_SetCollation( strCollation AS STRING ) AS OBJECT
   RETURN RDDINFO( ACE._SET_COLLATION_NAME, strCollation )

PROCEDURE AX_SetConnectionHandle( lHandle AS DWORD ) 
   RDDINFO( ACE._SET_CONNECTION_HANDLE, lHandle )
RETURN 

FUNCTION AX_SetExactKeyPos( ) AS LOGIC
    RETURN AX_RddHelper(ACE._SET_EXACTKEYPOS )

FUNCTION AX_SetExactKeyPos( bMode as LOGIC) AS LOGIC
    RETURN AX_RddHelper(ACE._SET_EXACTKEYPOS, bMode)

FUNCTION AX_RddHelper(iInfo as INT) AS LOGIC
    LOCAL bRetVal as OBJECT
    bRetVal := RDDINFO( iInfo )
    IF ! bRetVal is LOGIC
         bRetVal := TRUE
    ENDIF
    RETURN (logic) bRetVal


FUNCTION AX_RddHelper(iInfo as INT, lNewValue as LOGIC) AS LOGIC
    LOCAL bRetVal as LOGIC
    bRetVal := AX_RddHelper(iInfo)
    RDDINFO( iInfo , lNewValue)
    RETURN bRetVal



PROCEDURE AX_SetPassword( szEncodeKey AS STRING ) // Set password for record encryption
    IF  String.IsNullOrEmpty(szEncodeKey)
       DBFAXSAdsDisableEncryption( AX_GetAceTableHandle() )
    ELSE
       DBFAXSAdsEnableEncryption( AX_GetAceTableHandle(), szEncodeKey  )
    ENDIF
    RETURN

FUNCTION AX_SetServerType( lUseRemoteServer AS LOGIC, lUseInternetServer AS LOGIC, lUseLocalServer AS LOGIC) AS LOGIC // determine which Advantage server to connect to
    LOCAL usServerTypes AS WORD
    LOCAL ulRetCode AS DWORD

    usServerTypes := 0
    IF( lUseRemoteServer )
      usServerTypes := _OR( usServerTypes, ACE.ADS_REMOTE_SERVER )
    ENDIF
    IF( lUseInternetServer )
      usServerTypes := _OR( usServerTypes, ACE.ADS_AIS_SERVER )
    ENDIF
    IF( lUseLocalServer )
      usServerTypes := _OR( usServerTypes, ACE.ADS_LOCAL_SERVER )
    ENDIF

    ulRetCode := DBFAXSAdsSetServerType( usServerTypes )

    RETURN  ( ulRetCode == 0 )


FUNCTION AX_SetSQLTablePasswords( aPasswords AS OBJECT ) AS VOID
   RDDINFO( ACE._SET_SQL_TABLE_PASSWORDS, aPasswords )
    RETURN 

FUNCTION AX_Transaction( iAction as INT) AS LOGIC // Transaction call
    LOCAL usInTrans AS WORD
    LOCAL ulRetVal AS DWORD
    //
    // Transaction Processing function.  The parameter can be
    //   AX_BEGIN_TRANSACTION
    //   AX_COMMIT_TRANSACTION
    //   AX_ROLLBACK_TRANSACTION
    //   AX_ISACTIVE_TRANSACTION
    //
    usInTrans := 0

    DO CASE
    CASE iAction = ACE.AX_BEGIN_TRANSACTION
       ulRetVal := ACE.AdsBeginTransaction( 0 )
    CASE iAction = ACE.AX_COMMIT_TRANSACTION
       ulRetVal := DBFAXSAdsCommitTransaction( 0 )
    CASE iAction = ACE.AX_ROLLBACK_TRANSACTION
       ulRetVal := DBFAXSAdsRollbackTransaction( 0 )
    CASE iAction = ACE.AX_ISACTIVE_TRANSACTION
       ulRetVal := DBFAXSAdsInTransaction( 0, REF usInTrans )
    ENDCASE

    RETURN ( usInTrans != 0 )


FUNCTION AX_Transaction( ) AS LOGIC // Transaction call
    LOCAL usInTrans := 0 AS WORD
    LOCAL ulRetVal AS DWORD
    ulRetVal := DBFAXSAdsInTransaction( 0, REF usInTrans )
    RETURN ( usInTrans != 0 )


FUNCTION AX_UsingClientServer( ) AS LOGIC
    // return .T. if the current workarea is using Advantage Server or AIS Server and
    // .F. IF USING Advantage RDD IN a LOCAL mode
    LOCAL ulRetCode AS DWORD
    LOCAL ConnectionHandle := 0 AS DWORD
    LOCAL usServerType := 0 AS WORD
    LOCAL strFileName AS STRING
    strFileName := (String) DBINFO( DBI_FULLPATH )
    ulRetCode := DBFAXSAdsFindConnection(  strFileName , REF ConnectionHandle )
    ulRetCode := DBFAXSAdsGetConnectionType( ConnectionHandle, REF usServerType )
    RETURN ( usServerType == ACE.ADS_REMOTE_SERVER ) .OR. ( usServerType == ACE.ADS_AIS_SERVER )


_DLL FUNC DBFAXSAdsBeginTransaction ( hConnect AS DWORD ) AS DWORD PASCAL:ACE32.AdsBeginTransaction
_DLL FUNC DBFAXSAdsBinaryToFile ( hTbl AS DWORD, pucFldName AS STRING, pucFileName AS STRING ) AS DWORD PASCAL:ACE32.AdsBinaryToFile ANSI
_DLL FUNC DBFAXSAdsCommitTransaction ( hConnect AS DWORD ) AS DWORD PASCAL:ACE32.AdsCommitTransaction
_DLL FUNC DBFAXSAdsDisableEncryption( hTbl AS DWORD ) AS DWORD PASCAL:ACE32.AdsDisableEncryption
_DLL FUNC DBFAXSAdsEnableEncryption( hTbl AS DWORD, pucPassword AS STRING ) AS DWORD PASCAL:ACE32.AdsEnableEncryption ANSI
_DLL FUNC DBFAXSAdsFileToBinary ( hTbl AS DWORD, pucFldName AS STRING, usBinaryType AS WORD, pucFileName AS STRING) AS DWORD PASCAL:ACE32.AdsFileToBinary ANSI
_DLL FUNC DBFAXSAdsFindConnection ( pucServerName AS STRING, phConnect REF DWORD ) AS DWORD PASCAL:ACE32.AdsFindConnection ANSI
_DLL FUNC DBFAXSAdsGetConnectionType ( hConnect AS DWORD, pusConnectType REF WORD ) AS DWORD PASCAL:ACE32.AdsGetConnectionType
_DLL FUNC DBFAXSAdsInTransaction ( hConnect AS DWORD, pbInTrans REF WORD ) AS DWORD PASCAL:ACE32.AdsInTransaction
_DLL FUNC DBFAXSAdsIsServerLoaded ( pucServer AS STRING, pbLoaded REF WORD ) AS DWORD PASCAL:ACE32.AdsIsServerLoaded ANSI
_DLL FUNC DBFAXSAdsRollbackTransaction ( hConnect AS DWORD ) AS DWORD PASCAL:ACE32.AdsRollbackTransaction
_DLL FUNC DBFAXSAdsSetServerType ( usServerOptions AS WORD ) AS DWORD PASCAL:ACE32.AdsSetServerType

