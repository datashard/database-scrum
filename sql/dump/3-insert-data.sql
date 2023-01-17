# Region
insert into region values (1, '10101', 'Mülleimer');
insert into region values (2001, '20249', 'Hamburg');
insert into region values (2002, '22765', 'Hamburg');
insert into region values (2003, '20459', 'Hamburg');
insert into region values (2004, '22049', 'Hamburg');
insert into region values (2005, '22835', 'Barsbüttel');
insert into region values (2006, '21075', 'Hamburg');
insert into region values (2007, '21079', 'Hamburg');
insert into region values (2008, '21149', 'Hamburg');
insert into region values (2009, '22605', 'Hamburg'); 
insert into region values (2010, '24354', 'Weseby');
insert into region values (2011, '21635', 'Jork');
insert into region values (2012, '19217', 'Dechow');

insert into adresse values (1, 'Gelöschte Straße', '101', 1);
insert into adresse values (2001, 'Eppendorfer Landstrasse', '104', 2001);
insert into adresse values (2002, 'Ohmstraße', '23', 2002);
insert into adresse values (2003, 'Bilser Berg', '6', 2003);
insert into adresse values (2004, 'Alter Teichweg', '95', 2004);
insert into adresse values (2005, 'Stübels', '10', 2005);
insert into adresse values (2006, 'Grotelertwiete', '4a', 2006);
insert into adresse values (2007, 'Küstersweg', '3', 2007);
insert into adresse values (2008, 'Neugrabener Bahnhofstraße', '30', 2008);
insert into adresse values (2009, 'Elbchaussee', '228', 2009);
insert into adresse values (2010, 'Dorfstraße', '74', 2010);
insert into adresse values (2011, 'Westerjork', '76', 2011);
insert into adresse values (2012, 'Molkereiwegkundekunde', '13', 2012);

# Kunden

insert into kunde values (1,'Gelöschter','Kunde','kunde@example.de','000/0000000',1);
insert into kunde values (2001,'Kira','Wellensteyn','k.wellensteyn@yahoo.de','040/443322',2001);
insert into kunde values (2002,'Dorothea','Foede','d.foede@web.de','040/543822',2002);
insert into kunde values (2003,'Sigrid','Leberer','sigrid@leberer.de','0175/1234588',2003);
insert into kunde values (2004,'Hanna','Soerensen','h.soerensen@yahoo.de','040/634578',2004);
insert into kunde values (2005,'Marten','Schnitter','schni_mart@gmail.com','0176/447587',2005);
insert into kunde values (2006,'Belinda','Maurer','belinda1978@yahoo.de','040/332189',2006);
insert into kunde values (2007,'Gessert','Armin','armin@gessert.de','040/443322',2007);
insert into kunde values (2008,'Jean-Marc','Haessig','jm@haessig.de','0178-67013390',2008);
insert into kunde values (2009,'Eric','Urocki','urocki@outlook.de','0152-96701390',2009);


# Lieferant

insert into lieferant values  (101, 'Bio-Hof Müller', 2010, '04354-9080', 'mueller@biohof.de');
insert into lieferant values  (102, 'Obst-Hof Altes Land', 2011, '04162-4523', 'info@biohof-altesland.de');
insert into lieferant values  (103, 'Molkerei Henning', 2012, '038873-8976', 'info@molkerei-henning.de');


# Zutaten  (id, bezeichnung, einheit, nettopreis, bestand, ref_lieferant_id, kalorien, kohlenhydrate, protein) 

insert into zutat values (1001,'Zucchini','Stück', 0.89, 100, 101,19,2,1.6);
insert into zutat values (1002,'Zwiebel','Stück', 0.15, 50, 101, 28, 4.9, 1.20);
insert into zutat values (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.6, 1);
insert into zutat values (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.3, 1.5);
insert into zutat values (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10, 0.9);
insert into zutat values (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.6, 2);
insert into zutat values (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.1, 2.6);
insert into zutat values (1008, 'Lauch', 'Stück', 1.2, 35, 101, 29, 3.3, 2.1);
insert into zutat values (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.4, 6.1);
insert into zutat values (1010, 'Basilikum', 'Bund', 1.3, 10, 101, 41, 5.1, 3.1);
insert into zutat values (1011, 'Süßkartoffel', 'Stück', 2.0, 200, 101, 86, 20, 1.6);
insert into zutat values (1012, 'Schnittlauch', 'Bund', 0.9, 10, 101, 28, 1, 3);
insert into zutat values (2001, 'Apfel', 'Stück', 1.2, 750, 102, 54, 14.4, 0.3);
insert into zutat values (3001, 'Vollmilch. 3.5%', 'Liter', 1.5, 50, 103, 65, 4.7, 3.4);
insert into zutat values (3002, 'Mozzarella', 'Packung', 3.5, 20, 103, 241, 1, 18.1);
insert into zutat values (3003, 'Butter', 'Stück', 3.0, 50, 103, 741, 0.6, 0.7);
insert into zutat values (4001, 'Ei', 'Stück', 0.4, 300, 102, 137, 1.5, 11.9);
insert into zutat values (5001, 'Wiener Würstchen', 'Paar', 1.8, 40, 101, 331, 1.2, 9.9);
insert into zutat values (9001, 'Tofu-Würstchen', 'Stück', 1.8, 20, 103, 252, 7, 17);
insert into zutat values (6408, 'Couscous', 'Packung', 1.9, 15, 102, 351, 67, 12);
insert into zutat values (7043, 'Gemüsebrühe', 'Würfel', 0.2, 4000, 101, 1, 0.5, 0.5);
insert into zutat values (6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9);

# Beschränkungen

insert into beschraenkung values (1001, 'Laktose');
insert into beschraenkung values (1002, 'Gluten');
insert into beschraenkung values (1003, 'Nuss');
insert into beschraenkung values (1004, 'Fruktose');

 
insert into beschraenkungzutat values (1001,3001);
insert into beschraenkungzutat values (1001,3002);
insert into beschraenkungzutat values (1001,3003);
insert into beschraenkungzutat values (1001,4001);
insert into beschraenkungzutat values (1004,2001);
insert into beschraenkungzutat values (1004,1011);
insert into beschraenkungzutat values (1002,6408);


# Ernährungskategorien
 
insert into ernaehrungskategorie values (1001, 'Vegan');
insert into ernaehrungskategorie values (1002, 'Vegetarisch');
insert into ernaehrungskategorie values (1003, 'Low Carb');
insert into ernaehrungskategorie values (1004, 'High Carb');

 
insert into ernaehrungskategoriezutat values (1001,1001);
insert into ernaehrungskategoriezutat values (1001,1002);
insert into ernaehrungskategoriezutat values (1001,1003);
insert into ernaehrungskategoriezutat values (1001,1004);
insert into ernaehrungskategoriezutat values (1001,1005);
insert into ernaehrungskategoriezutat values (1001,1006);
insert into ernaehrungskategoriezutat values (1001,1007);
insert into ernaehrungskategoriezutat values (1001,1008);
insert into ernaehrungskategoriezutat values (1001,1009);
insert into ernaehrungskategoriezutat values (1001,1010);
insert into ernaehrungskategoriezutat values (1001,1011);
insert into ernaehrungskategoriezutat values (1001,1012);
insert into ernaehrungskategoriezutat values (1001,2001);
insert into ernaehrungskategoriezutat values (1001,6300);
insert into ernaehrungskategoriezutat values (1001,6408);
insert into ernaehrungskategoriezutat values (1001,7043);
insert into ernaehrungskategoriezutat values (1001,9001);
insert into ernaehrungskategoriezutat values (1002,3001);
insert into ernaehrungskategoriezutat values (1002,3002);
insert into ernaehrungskategoriezutat values (1002,3003);
insert into ernaehrungskategoriezutat values (1002,4001);
insert into ernaehrungskategoriezutat values (1003,1008);
insert into ernaehrungskategoriezutat values (1003,1007);
insert into ernaehrungskategoriezutat values (1004,6408);
insert into ernaehrungskategoriezutat values (1004,5001);

# Rezepte
 
insert into rezept values (1001, 'Wiener Würstchen mit Tomate- Mozarella Salat und Süßkartoffelpommes');
insert into rezept values (1002, 'Gemüsepatties mit Salat');
insert into rezept values (1003, 'Couscous-bowl');
insert into rezept values (1004, 'Tomate Mozarella');
 
insert into rezeptzutat values (1001,5001,1);
insert into rezeptzutat values (1001,1003,3);
insert into rezeptzutat values (1001,3002,2);
insert into rezeptzutat values (1001,1010,1);
insert into rezeptzutat values (1001,1006,5);

insert into rezeptzutat values (1002,1002,2);
insert into rezeptzutat values (1002,1011,2);
insert into rezeptzutat values (1002,1005,3);
insert into rezeptzutat values (1002,4001,1);
insert into rezeptzutat values (1002,1012,2);
insert into rezeptzutat values (1002,1009,10);
insert into rezeptzutat values (1002,6300,1);
insert into rezeptzutat values (1002,1003,3);
insert into rezeptzutat values (1002,1007,1);

insert into rezeptzutat values (1003,6408,1);
insert into rezeptzutat values (1003,7043,1);
insert into rezeptzutat values (1003,1008,2);
insert into rezeptzutat values (1003,1002,3);
insert into rezeptzutat values (1003,1003,2);
insert into rezeptzutat values (1003,1005,3);
insert into rezeptzutat values (1003,1007,1);
insert into rezeptzutat values (1003,1009,10);
insert into rezeptzutat values (1003,9001,2);

insert into rezeptzutat values (1004,1003,5);
insert into rezeptzutat values (1004,3002,5);
insert into rezeptzutat values (1004,1010,1);


insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (1,2001,'2020-07-01', 6.21);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (2,2002,'2020-07-08', 32.96);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (3,2003,'2020-08-01',24.08);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (4,2004,'2020-08-02', 19.90);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (5,2005,'2020-08-02', 6.47);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (6,2006,'2020-08-10', 6.96);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (7,2007,'2020-08-10', 2.41);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (8,2008,'2020-08-10', 13.80);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (9,2009,'2020-08-10', 8.67);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (10,2007,'2020-08-15', 17.98);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (11,2005,'2020-08-12', 8.67);
insert into bestellung (id, ref_kunde_id, bestelldatum, rechnungsbetrag) values (12,2003,'2020-08-13', 20.87);

insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (1, 1001, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (1, 1002, 3);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (1, 1006, 2);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (1, 1004, 3);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (2, 9001, 10);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (2, 1005, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (2, 1003, 4);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (2, 6408, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (3, 6300, 15);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (3, 3001, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (4, 5001, 7);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (4, 3003, 2);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (5, 1002, 4);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (5, 1004, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (5, 1001, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (7, 1009, 9);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (6, 1010, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (8, 1012, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (8, 1008, 7);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (9, 1007, 4);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (9, 1012, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (10, 1011, 7);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (10, 4001, 7);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (11, 5001, 2);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (11, 1012, 5);
insert into bestellungzutat(ref_bestellung_id, ref_zutat_id, menge) values (12, 1010, 15);

insert into bestellungrezept values (1, 1001, 1);
insert into bestellungrezept values (3, 1002, 1);
insert into bestellungrezept values (7, 1003, 2);
insert into bestellungrezept values (3, 1002, 1);
insert into bestellungrezept values (9, 1001, 2);