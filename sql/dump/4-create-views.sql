create view v_kunde as 
    select 
	    k.id, vorname, nachname, email, telefon, 
        strasse, hausnummer,
        plz, ort
    from kunde k 
    join adresse a on k.ref_adresse_id=a.id 
    join region r on a.ref_region_id=r.id;