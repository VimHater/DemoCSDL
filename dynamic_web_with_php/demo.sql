USE master;


IF OBJECT_ID('Users', 'U') IS NOT NULL
    DROP TABLE Users;


CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);



INSERT INTO Users (id, name) VALUES (2, 'User 2');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (3, 'User 3');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (4, 'User 4');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (5, 'User 5');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (6, 'User 6');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (7, 'User 7');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (8, 'User 8');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (9, 'User 9');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (10, 'User 10');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (11, 'User 11');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (12, 'User 12');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (13, 'User 13');
WAITFOR DELAY '00:00:02';
INSERT INTO Users (id, name) VALUES (14, 'User 14');

SELECT * FROM Users;

DROP TABLE Users;