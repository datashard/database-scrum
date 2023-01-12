-- Returns Mapping between Zutat and Ernährungskategorie
select z.BEZEICHNUNG, e.ERNAEHRUNGSKATEGORIENAME 
from ZUTAT z 
join REF_ERNAEHRUNGSKATEGORIE re ON z.ZUTATENNR = re.REF_ZUTAT_ZUTATENNR
join ERNAEHRUNGSKATEGORIE e ON re.REF_ERNAEHRUNGSKATEGORIE_ID = e.ID
where e.ERNAEHRUNGSKATEGORIENAME = "Vegan";



select z.BEZEICHNUNG 
from ZUTAT z 
join REF_REZEPT rr ON z.ZUTATENNR = rr.REF_ZUTAT_ZUTATENNR
join REZEPT r ON r.ID  = rr.REF_REZEPT_ID 
where r.REZEPTNAME = "Gemüsepatties mit Salat";

select * from BESTELLUNGZUTAT b;
select * from BESTELLUNG b;
select * from ZUTAT;
