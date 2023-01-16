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
    foreign key (ref_region_id)
        references region(id)
        on delete cascade
);

create table kunde(
    id integer not null auto_increment,
    vorname varchar(255),
    nachname varchar(255),
    email varchar(255),
    telefon varchar(255),
    ref_adresse_id integer not null,
    primary key(id),
    foreign key (ref_adresse_id)
        references adresse(id)
        on delete cascade

);


create table bestellung(
    id integer not null,
    bestelldatum date,
    ref_kunde_id integer not null,
    rechnungsbetrag decimal(10,2),
    primary key(id)
);

create table bestellungzutat (
    ref_bestellung_id integer not null,
    ref_zutat_id integer,
    menge integer
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
    primary key(id)
);

create table rezept (
    id integer not null,
    rezeptname varchar(255),
    primary key(id)
);

create table rezeptzutat (
    ref_rezept_id integer not null,
    ref_zutat_id integer not null,
    menge integer
);

create table beschraenkung (
    id integer not null,
    beschraenkungname varchar(255),
    primary key(id)
);

create table beschraenkungzutat (
    ref_beschraenkung_id integer not null,
    ref_zutat_id integer not null
);

create table ernaehrungskategorie (
    id integer not null,
    ernaehrungskategoriename varchar(255),
    primary key(id)
);

create table ernaehrungskategoriezutat (
    ref_ernaehrungskategorie_id integer not null,
    ref_zutat_id integer not null
);

create table lieferant (
    id integer not null,
    lieferantenname varchar(255),
    ref_adresse_id integer not null,
    telefon varchar(25),
    email varchar(50),
    primary key(id)
);