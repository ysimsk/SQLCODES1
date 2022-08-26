CREATE TABLE ogrenciler
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);

INSERT INTO ogrenciler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler VALUES(127, 'Mustafa Bak', 'Ali', 99);

select *from ogrenciler;

-- id si 124 olan ogrenciyi siliniz.

DELETE FROM ogrenciler where id=124;

-- ismi kemal Yasa olan satiri siliniz
DELETE FROM ogrenciler where isim='Kemal Yasa';

-- ismi Nesibe Yilmaz  veya Mustafa Bak olan kayitlari silelim

DELETE FROM ogrenciler where isim='Nesibe Yilmaz' or isim= 'Mustafa Bak';

-- ismi Ali Can ve id si 123 olan kaydi siliniz
DELETE FROM ogrenciler where isim='Ali Can' and id=123;

-- Tablodaki tum verileri silelim

Delete from ogrenciler;
select *from ogrenciler;

TRUNCATE TABLE ogrenciler; -- hepsini siler secme olmaz

--ALTER TABLE tabloda ADD TYPE SET RENAME veya DROP COLUMNS islemleri
create table personel(
pers_id int,
isim varchar(30),
sehir varchar(30),
maas int,
sirket varchar(20),
adres varchar(50)
);

--personel tablosuna cinsiyet Varcha(20) ve yas int sutunlari ekleme
alter table personel add cinsiyet Varchar(20), add yas int;

select * from isciler; 
alter table personel drop column sirket;
alter table personel Rename column sehir to ulke;

--personel tab adini isciler olarak degistrniz.
alter table personel rename to isciler
drop table isciler;
--CCONSTRANINT -- KISITLAMALAR
--PRIMARY KEY --> NULL ICERMEZ BENZERSIZDIR
--FOREIGN KEY--> BASKA TABLODAKI PRIMARY I KEY I REFERANS ALIR
--UNIQUE --> TUM SUTUNDAKI DEGERLERIN BENZERSIZ OLMASI
--NOT NULL KISITLAMASI ICIN CONSTRAINT ISMI TANIMLANMAZ VERI TURUNDEN SONRA YERLESTIRILIE
CREATE TABLE calisanlar
(
id CHAR(5) PRIMARY KEY, -- not null + unique
isim VARCHAR(50) UNIQUE,
maas int NOT NULL,
ise_baslama DATE
);  
CREATE TABLE calisanlar2(
id CHAR(5),
isim VARCHAR(50),
maas int NOT NULL,
ise_baslama DATE,
CONSTRAINT pk id PRIMARY KEY(id),
CONSTRAINT ism_unq UNIQUE (isim)
);
INSERT INTO calisanlar VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10010', Mehmet Yılmaz, 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10006', 'Canan Yaş', NULL, '2019-04-12');
INSERT INTO calisanlar VALUES('10003', 'CAN', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10007', 'CAN', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10009', 'cem', '', '2018-04-14');
INSERT INTO calisanlar VALUES('', 'osman', 2000, '2018-04-14');
INSERT INTO calisanlar VALUES('', 'osman can', 2000, '2018-04-14');
INSERT INTO calisanlar VALUES( '10002', 'ayse Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES( null, 'filiz ' ,12000, '2018-04-14');
