create view v_kunden_adressen_regionen as 
    select 
	    k.id, vorname, nachname, email, telefon, 
        strasse, hausnummer,
        plz, ort
    from kunde k 
    join adresse a on k.ref_adresse_id=a.id 
    join region r on a.ref_region_id=r.id;

create view v_kunden_bestellungen_zutaten as
select k.id as kunde_id, z.id as zutat_id, b.id as bestellung_id, k.vorname, k.nachname, b.rechnungsbetrag, bz.menge, z.einheit, z.kalorien, z.kohlenhydrate, z.protein, z.nettopreis from kunde k
left join bestellung b on b.ref_kunde_id = k.id
left join bestellungzutat bz on bz.ref_bestellung_id = b.id
left join zutat z on z.id = bz.ref_zutat_id;

create view v_zutaten_rezepte_ernaehrungskategorien as
select z.id, z.bezeichnung, z.einheit, z.nettopreis, z.bestand, z.kalorien, z.kohlenhydrate, z.protein, r.rezeptname, e.ernaehrungskategoriename from zutat z
left join rezeptzutat rz on z.id = rz.ref_zutat_id
left join rezept r on r.id = rz.ref_rezept_id
left join ernaehrungskategoriezutat ez on z.id = ez.ref_zutat_id
left join ernaehrungskategorie e on e.id = ez.ref_ernaehrungskategorie_id;

create view v_rezepte_zutaten as
select r.id, r.rezeptname, z.bezeichnung from rezept r
inner join rezeptzutat rz on r.id = rz.ref_rezept_id
inner join zutat z on z.id = rz.ref_zutat_id;

create view v_rezepte_zutaten_anzahl as
select r.rezeptname, (select count(vrz.bezeichnung) from v_rezepte_zutaten vrz where vrz.rezeptname = r.rezeptname) zutatenanzahl from rezept r;

create view v_rezepte_kalorien as
select r.rezeptname, (select sum(vrzk2.kalorien) from v_zutaten_rezepte_ernaehrungskategorien vrzk2 where vrzk2.rezeptname = r.rezeptname) kalorien from rezept r;

