SELECT SysObjects.name as TableName,
   PartStats.row_count
FROM sys.indexes AS SysIndexes
  JOIN sys.objects AS SysObjects ON
               SysIndexes . OBJECT_ID = SysObjects.OBJECT_ID
  JOIN sys.dm_db_partition_stats AS PartStats ON
          SysIndexes.OBJECT_ID = PartStats.OBJECT_ID
          AND SysIndexes.index_id = PartStats.index_id
WHERE SysIndexes.index_id < 2 AND
 SysObjects.is_ms_shipped = 0 ORDER BY row_count DESC