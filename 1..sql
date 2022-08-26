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

TRUNCATE TABLE ogrenciler;