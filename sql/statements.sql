-- 2.1
select * from v_dsvgo d where d.kunde_id = 2007;

-- 3.1
select distinct count(bezeichnung), bezeichnung from v_zutaten_rezepte_ernaehrungskategorien where rezeptname = "Couscous-bowl" group by bezeichnung;	

-- 3.2
select vrka.rezeptname from v_rezept_kategorien_anzahl vrka where vrka.anzahlzutaten = vrka.anzahlvegan;

-- 3.3
select distinct rezeptname from v_zutaten_rezepte_ernaehrungskategorien where bezeichnung = "LAUCH";

-- 3.4
select avg(kalorien) from v_kunden_bestellungen_zutaten where kunde_id = 2001;

-- 3.5
select vrzk.bezeichnung from v_zutaten_rezepte_ernaehrungskategorien vrzk where vrzk.rezeptname IS NULL;

-- 3.6
select rezeptname from v_rezepte_kalorien where kalorien < 1000;

-- 3.7 
select vrka.rezeptname from v_rezept_kategorien_anzahl vrka where vrka.anzahlzutaten < 5;

-- 3.8
select vrka.rezeptname from v_rezept_kategorien_anzahl vrka where vrka.anzahlzutaten < 10 and vrka.anzahlvegan = vrka.anzahlzutaten;

-- 3.9
delete from kunde where id=2007