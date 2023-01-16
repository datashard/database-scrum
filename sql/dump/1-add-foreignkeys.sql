
alter table zutat add foreign key (ref_lieferant_id) references lieferant (id);

alter table kunde add foreign key (ref_adresse_id) references adresse (id);

alter table adresse add foreign key (ref_region_id) references region (id);

alter table bestellung add foreign key (ref_kunde_id) references kunde (id);

alter table bestellungzutat add foreign key (ref_bestellung_id) references bestellung (id);
alter table bestellungzutat add foreign key (ref_zutat_id) references zutat (id);

alter table rezeptzutat add foreign key (ref_rezept_id) references rezept (id);
alter table rezeptzutat add foreign key (ref_zutat_id) references zutat (id);

alter table bestellungrezept add foreign key (ref_bestellung_id) references bestellung (id);
alter table bestellungrezept add foreign key (ref_rezept_id) references rezept (id);

alter table beschraenkungzutat add foreign key (ref_beschraenkung_id) references beschraenkung (id);
alter table beschraenkungzutat add foreign key (ref_zutat_id) references zutat (id);

alter table ernaehrungskategoriezutat add foreign key (ref_ernaehrungskategorie_id) references ernaehrungskategorie (id);
alter table ernaehrungskategoriezutat add foreign key (ref_zutat_id) references zutat (id);
