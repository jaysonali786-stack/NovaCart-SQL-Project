SELECT
    fk.name AS Foreign_Key_Name,
    OBJECT_NAME(fk.parent_object_id) AS Child_Table,
    COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS Child_Column,
    OBJECT_NAME(fk.referenced_object_id) AS Parent_Table,
    COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS Parent_Column
FROM sys.foreign_keys AS fk
INNER JOIN sys.foreign_key_columns AS fkc
    ON fk.object_id = fkc.constraint_object_id
ORDER BY Child_Table;
GO