-- sql_practise 1                                                                            
create table personel                                                                        
(                                                                                            
id serial primary key  ,                                                                     
isim varchar(20),                                                                            
yas int,                                                                                     
maas int,                                                                                    
email varchar(30)                                                                            
);                                                                                           
                                                                                             
-- auto_increment kullandığımızda otomatik olarak id ler 1 den başlayacaktır. 

insert into personel (isim, yas, maas, email) values ('Ali', 39, 12500, 'ali@gmail.com');
insert into personel (isim, yas, maas, email) values ('Derya', 28, 15000, 'derya@yahoo.com');
insert into personel (isim, yas, maas, email) values ('Sevim', 24, 25000, 'sevim@hotmail.com');
insert into personel (isim, yas, maas, email) values ('Yusuf', 32, 18000, 'yusuf@gmail.com');
insert into personel (isim, yas, maas, email) values ('Halil', 48, 22000, 'halil@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ece', 54, 21000, 'ece@gmail.com');
insert into personel (isim, yas, maas, email) values ('Can', 38, 19000, 'can@gmail.com');
insert into personel (isim, yas, maas, email) values ('Elif', 27, 14000, 'elif@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ezgi', 38, 21000, 'ezgi@gmail.com');
insert into personel (isim, yas, maas, email) values ('Sena', 25, 11000, NULL);

select * from personel

select  isim, yas,maas from personel


selec *from personel where id=8

select isim,yas,email from personel where id =5

select * from personel where yas>38

--maasi 21000 olmayan
select maas from personel where maas <> 21000 
--A harfi ile baslayan
select isim from personel where isim ilike 'a%' 

---- 8:  ismi n harfi ile biten personel bilgilerini listeleyiniz.
select * from personel where isim ilike '%n'
-- 9) email adresi gmail olan personel bilgilerini listeleyiniz.
select * from personel where email ilike '%gmail.com';

--11) id'si 3,5,7 ve 9 olan personel bilgilerini listeleyiniz.
select *from personel where id in(3,5,7,9);
-- 12) yaşı 39,48 ve 54 olmayan personel bilgilerini listeleyiniz.
select * from personel where yas not in(39,48,54);

-- 13) yaşı 30 ve 40 arasında olan personel bilgilerini listeleyiniz.
select *from personel where yas>30  and yas<40
select * from personel where yas between 30 and 40;
-- 14) yaşı 30 ve 40 arasında olmyan personel bilgilerini listeleyiniz.

select *from personel where yas not between 30 and 40

-- 15) emaili null olan personel bilgilerini listeleyiniz.
select *from personel where email is null

-- 16) personel bilgilerini yaşa göre sıralayınız.
select *from personel order by yas

-- 17) personel bilgilerini maaşa göre sıralayınız.
select *from personel order by maas

- 18) personelin yaşlarını büyükten küçüğe doğru sıralayınız.
select *from personel order by yas desc;

-- 19) personelin maaşlarını büyükten küçüğe doğru sıralayınız.
select maas from personel  order by maas desc

-- 20) En yüksek maaş olan ilk 3 personel bilgilerini sıralayınız
select *from personel where order by maas desc limit 3





























