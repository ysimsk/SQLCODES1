--1)SELECT
SELECT sütun_adı1, sütun_adı2, ... FROM tablo_adı
SELECT * FROM tablo_adı

--2)INSERT
INSERT INTO tablo_adı VALUES (deger1, deger2, ...)

--3)UPDATE
UPDATE tablo_adı SET sütun_adı1=deger1, sütun_adı2=deger2, ... WHERE sütun_adı=deger

--4)DELETE
DELETE FROM tablo_adı WHERE sütun_adı=deger

--5)CREATE
CREATE DATABASE veritabanı_adı

--SUTUNLAR--
--6)ALTER
1. Bir tabloya sütun eklemek için:

ALTER TABLE tablo_adı ADD sütun_adı veri_türü

2. Bir tablodaki sütunu silmek için:

ALTER TABLE tablo_adı DROP sütun_adı

3. Bir tablodaki sütunun veri türünü değiştirmek için:

ALTER TABLE tablo_adı ALTER COLUMN sütun_adı veri_türü (SQL Server, MS Access)

ALTER TABLE tablo_adı MODIFY COLUMN sütun_adı veri_türü (MySQL, Oracle)













