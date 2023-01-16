-- 3.1
select distinct count(bezeichnung), bezeichnung from v_zutaten_rezepte_ernaehrungskategorien where rezeptname = "Couscous-bowl" group by bezeichnung;	

-- 3.2 NOT WORKING YET
select distinct rezeptname
from v_rezepte_zutaten_kategorien 
where 
	ernaehrungskategoriename = "Vegetarisch"
;

select * from v_zutaten_rezepte_ernaehrungskategorien;

-- 3.3
select distinct rezeptname from v_zutaten_rezepte_ernaehrungskategorien where bezeichnung = "LAUCH";

-- 3.4
select avg(kalorien) from v_kunden_bestellungen_zutaten where kunde_id = 2001;

-- 3.5
select vrzk.bezeichnung from v_zutaten_rezepte_ernaehrungskategorien vrzk where vrzk.rezeptname IS NULL;

-- 3.6
select rezeptname from v_rezepte_kalorien where kalorien < 1000;

-- 3.7 
select rezeptname from v_rezepte_zutaten_anzahl where zutatenanzahl < 5;

-- 3.8

-- 3.9
delete from kunde where id=2007