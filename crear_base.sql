USE Master;
PRINT "Revisando si existe."
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = 'FBD2020_1_5312')
BEGIN
PRINT "Ya existía, se va a eliminar."
DROP DATABASE FBD2020_1_5312
END;
ELSE
PRINT "No existía."


PRINT "Creando base."
CREATE DATABASE FBD2020_1_5312
ON PRIMARY
(
NAME = FBD2020_1_5312,
FILENAME = '/fbd/fundamentos.mdf',
SIZE = 10MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 50%
)
LOG ON
(
NAME = FBD2020_1_5312_Log,
FILENAME = '/fbd/fundamentos.ldf',
SIZE = 2MB,
MAXSIZE = 100MB,
FILEGROWTH = 2MB
);
PRINT "Base de databasestos creada."
GO