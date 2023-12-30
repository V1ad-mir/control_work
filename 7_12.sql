DROP DATABASE IF EXISTS FriendsOfPerson;
CREATE DATABASE FriendsOfPerson;
USE FriendsOfPerson;


-- Создаybt таблицы с иерархией из диаграммы в БД
CREATE TABLE Dogs (
 ID_Dogs INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255)
 );
 CREATE TABLE Cats  (
  ID_Cats INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255) 
 );
 CREATE TABLE Hamsters (
  ID_Hamster INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255) 
 );
 CREATE TABLE Horses  (
  ID_Horses INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255) 
 );
 CREATE TABLE Camels (
  ID_Camels INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255) 
 );
 CREATE TABLE Donkeys (
   ID_Donkeys INT PRIMARY KEY AUTO_INCREMENT,
 Name_animal VARCHAR(255),
 Birthdate DATE,
 Breed VARCHAR(255) 
 );

 INSERT INTO Dogs (Name_animal, Birthdate, Breed) VALUES
  ('Цезарь', '2005-11-15', 'Алабай'),
  ('Чарли', '2007-10-10', 'Лабрадор'),
  ('Чип', '2005-11-15', 'Мопс');

 INSERT INTO Cats (Name_animal, Birthdate, Breed) VALUES
  ('Гарфилд', '2008-11-15', 'Кимрик'),
  ('Том', '2007-10-12', 'Сноу-Шу'),
  ('Матроскин', '2009-11-15', NULL);
 INSERT INTO  Hamsters (Name_animal, Birthdate, Breed) VALUES
  ('Гари', '2010-11-15', 'Сирийские'),
  ('Пух', '2007-01-10', 'Китайские'),
  ('Шерлок', '2005-08-15', 'Кэмпбелл');
   INSERT INTO  Horses (Name_animal, Birthdate, Breed) VALUES
  ('Закат', '2004-11-15', 'Ахалтекинец'),
  ('Зевс', '2011-10-10', 'Брабансон'),
  ('Зулан', '2021-11-15', 'Вятская лошадь');
 INSERT INTO Camels (Name_animal, Birthdate, Breed) VALUES
  ('Денеб', '2000-11-15', 'Арабиан'),
  ('Финбар', '2007-03-10', 'Бактриан'),
  ('Алл', '2005-11-30', 'Дикий верблюд');
 INSERT INTO  Donkeys (Name_animal, Birthdate, Breed) VALUES
  ('Берти', '2005-11-15', 'Пиренейская'),
  ('Дора', '2007-10-10', 'Марыйская'),
  ('Диор', '2005-11-15', 'Провансальская');
-- Шаг 3: Удалить верблюдов из таблицы camels
-- Шаг 3: Удалить верблюдов из таблицы Camels
DELETE FROM Camels WHERE ID_Camels > 0;

-- Шаг 4: Создать таблицу "молодые животные" и заполнить ее данными
CREATE TABLE all_animals AS
SELECT 'dogs' AS Animal_type, ID_Dogs AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Dogs
UNION ALL
SELECT 'camels' AS Animal_type, ID_Camels AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Camels
UNION ALL
SELECT 'donkeys' AS Animal_type, ID_Donkeys AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Donkeys
UNION ALL
SELECT 'horses' AS Animal_type, ID_Horses AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Horses
UNION ALL
SELECT 'cats' AS Animal_type, ID_Cats AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Cats
UNION ALL
SELECT 'hamsters' AS Animal_type, ID_Hamster AS ID, Name_animal, Birthdate, Breed, NULL AS Age_months
FROM Hamsters;
select * from all_animals