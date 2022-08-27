-- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı
*/

select * from calisanlar2
-- calisanlar tablosundaki en yuksek maas degerini getirelim

select max(maas) from calisanlar2

-- calisanlar tablosunda ki maaslarin toplamini listeleyiniz
select sum(maas) from calisanlar2

-- maas ortalamalarini listeleyiniz
select avg(maas) from calisanlar2
select round (avg(maas)) from calisanlar2
select round (avg(maas),2) from calisanlar2

-- calisanlar tablosundan en dusuk maasi listeleyiniz
select min(maas) from calisanlar2

--kac kisi maas aliyor
select count (maas) from calisanlar2

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin 
--toplam maaşini listeleyiniz


select marka_isim,calisan_sayisi,
(select sum(maas)) from calisanlar2 where marka_isim=isyeri_isim) 
as toplam_maas from markalar

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve
--minumum maaşini listeleyen bir Sorgu yaziniz.

select marka_isim,calisan_sayisi, (select max(maas)from calisanlar2 where marka_isim=isyeri)
as max_maas (select min(maas) from calisanlar2 where marka_isim=isyer) as min_maas
from markalar

--Her markanin id’sini, ismini ve 
--toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

select marka_id, marka_isim (select count(sehir)from calisanlar2 where marka_isim=isyer)
as sehir_sayisi from markalar

--Interview Question: En yüksek ikinci maas değerini çağırın.
select max(maas) as enyuksek_ikinci_maas from calisanlar2
where maas<(select max(maas)from calisanlar2)

----Interview Question: En düşük ikinci maas değerini çağırın.

select min(maas) as endusuk_ikinci_maas from calisanlar2
where maas>(select min(maas)from calisanlar2)

--En yüksek üçüncü maas değerini bulun
SELECT MAX(maas) as enyuksek_ucuncu_maas from calisanlar2
WHERE maas<(select max(maas)from calisanlar2 WHERE maas< (SELECT max(maas) from calisanlar2))
--En düşük üçüncü maas değerini bulununuz (ÖDEV)





































