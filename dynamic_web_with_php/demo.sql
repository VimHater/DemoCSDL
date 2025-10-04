USE master;


IF OBJECT_ID('Users', 'U') IS NOT NULL
    DROP TABLE Users;


CREATE TABLE Users
(
    id   INT          PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO Users (id, name) VALUES (1, 'User 1');

INSERT INTO Users (id, name) VALUES (2, 'User 2');

INSERT INTO Users (id, name) VALUES (3, 'User 3');


DECLARE @i INT = 4;

WHILE @i <= 50
BEGIN
    INSERT INTO Users (id, name) VALUES (@i, 'User ' + CAST(@i AS VARCHAR));

    WAITFOR DELAY '00:00:02';

    SET @i = @i + 1;
END

SELECT * FROM Users;

DROP TABLE Users;
