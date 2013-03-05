/*
 * Error Handling Logging Framework
 * Sample Data
 * SQL Server 2008/2012
 */

USE ErrorETL;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Error-Handling-Logging-Framework', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Error-Handling-Logging-Framework', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Error-Handling-Logging-Framework', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
