/*
 * Error Handling Logging Framework
 * Project #74 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ErrorETL')
BEGIN
    ALTER DATABASE ErrorETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ErrorETL;
END
GO

CREATE DATABASE ErrorETL
ON PRIMARY
(
    NAME = 'ErrorETL_Data',
    FILENAME = 'C:\SQLData\ErrorETL_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ErrorETL_Log',
    FILENAME = 'C:\SQLData\ErrorETL_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ErrorETL SET RECOVERY SIMPLE;
ALTER DATABASE ErrorETL SET AUTO_UPDATE_STATISTICS ON;
GO

USE ErrorETL;
GO

PRINT 'Database ErrorETL created successfully';
PRINT 'Project: Error Handling Logging Framework';
PRINT 'Description: ETL audit logging implementation';
GO
