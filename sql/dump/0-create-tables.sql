drop database if exists krautundrueben;
create database if not exists krautundrueben;
use krautundrueben;

create table region(
    id integer not null,
    plz varchar(5),
    ort varchar(255),
    primary key(id)
);

create table adresse(
    id integer not null,
    strasse varchar(255),
    hausnummer varchar(6) not null,
    ref_region_id integer not null,
    primary key(id),
    foreign key (ref_region_id) references region(id) on delete cascade
);

create table kunde(
    id integer not null auto_increment,
    vorname varchar(255),
    nachname varchar(255),
    email varchar(255),
    telefon varchar(255),
    ref_adresse_id integer not null,
    primary key(id),
    foreign key (ref_adresse_id) references adresse(id) on delete cascade

);

create table lieferant (
    id integer not null,
    lieferantenname varchar(255),
    ref_adresse_id integer not null,
    telefon varchar(25),
    email varchar(50),
    primary key(id),
    foreign key (ref_adresse_id) references adresse(id)
);

create table bestellung(
    id integer not null,
    bestelldatum date,
    ref_kunde_id integer,
    rechnungsbetrag decimal(10,2),
    primary key(id),
    foreign key (ref_kunde_id) references kunde(id)
);

create table zutat (
    id integer not null,
    bezeichnung varchar(255),
    einheit varchar(25),
    nettopreis decimal(10,2),
    bestand integer,
    ref_lieferant_id integer,
    kalorien integer,
    kohlenhydrate decimal(10,2),
    protein decimal(10,2),
    primary key(id),
    foreign key (ref_lieferant_id)
        references lieferant(id)
);

create table bestellungzutat (
    ref_bestellung_id integer not null,
    ref_zutat_id integer not null,
    menge integer not null,
    foreign key (ref_bestellung_id) references bestellung(id),
    foreign key (ref_zutat_id) references zutat(id)
);

create table rezept (
    id integer not null,
    rezeptname varchar(255),
    primary key(id)
);

create table rezeptzutat (
    ref_rezept_id integer not null,
    ref_zutat_id integer not null,
    menge integer,
    foreign key (ref_rezept_id) references rezept(id),
    foreign key (ref_zutat_id) references zutat(id)
);

create table bestellungrezept (
    ref_bestellung_id integer not null,
    ref_rezept_id integer not null,
    menge integer not null,
    foreign key (ref_bestellung_id) references bestellung(id),
    foreign key (ref_rezept_id) references rezept(id)
);

create table beschraenkung (
    id integer not null,
    beschraenkungname varchar(255),
    primary key(id)
);

create table beschraenkungzutat (
    ref_beschraenkung_id integer not null,
    ref_zutat_id integer not null,
    foreign key (ref_beschraenkung_id) references beschraenkung(id),
    foreign key (ref_zutat_id) references zutat(id)

);

create table ernaehrungskategorie (
    id integer not null,
    ernaehrungskategoriename varchar(255),
    primary key(id)
);

create table ernaehrungskategoriezutat (
    ref_ernaehrungskategorie_id integer not null,
    ref_zutat_id integer not null,
    foreign key (ref_ernaehrungskategorie_id) references ernaehrungskategorie(id),
    foreign key (ref_zutat_id) references zutat(id)
);