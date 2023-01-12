-- Beschränkungen
insert into beschraenkung values 
    (1001, 'Laktose'),
    (1002, 'Gluten'),
    (1003, 'Nuss'),
    (1004, 'Fruktose');

insert into beschraenkungzutat values 
    (1001,3001),
    (1001,3002),
    (1001,3003),
    (1001,4001),
    (1004,2001),
    (1004,1011),
    (1002,6408);


-- Ernährungskategorien
insert into ernaehrungskategorie 
values 
    (1001, 'Vegan'),
    (1002, 'Vegetarisch'),
    (1003, 'Low Carb'),
    (1004, 'High Carb');

insert into ernaehrungskategoriezutat 
values 
    (1001,1001),
    (1001,1002),
    (1001,1003),
    (1001,1004),
    (1001,1005),
    (1001,1006),
    (1001,1007),
    (1001,1008),
    (1001,1009),
    (1001,1010),
    (1001,1011),
    (1001,1012),
    (1001,2001),
    (1001,6300),
    (1001,6408),
    (1001,7043),
    (1001,9001),
    (1002,3001),
    (1002,3002),
    (1002,3003),
    (1002,4001),
    (1003,1008),
    (1003,1007),
    (1004,6408);

-- Rezepte
insert into rezept 
values 
    (1001, 'Wiener Würstchen mit Tomate- Mozarella Salat und Süßkartoffelpommes'),

    (1002, 'Gemüsepatties mit Salat'),

    (1003, 'Couscous-bowl');

insert into rezeptzutat 
values 
    (1001,5001,1),
    (1001,1003,3),
    (1001,3002,2),
    (1001,1010,1),
    (1001,1006,5),
    (1002,1002,2),
    (1002,1011,2),
    (1002,1005,3),
    (1002,4001,1),
    (1002,1012,2),
    (1002,1009,10),
    (1002,6300,1),
    (1002,1003,3),
    (1002,1007,1),
    (1003,6408,1),
    (1003,7043,1),
    (1003,1008,2),
    (1003,1002,3),
    (1003,1003,2),
    (1003,1005,3),
    (1003,1007,1),
    (1003,1009,10),
    (1003,9001,2);

insert into region
values
    (2001, '20249', 'Hamburg'),
    (2002, '22765', 'Hamburg'),
    (2003, '20459', 'Hamburg'),
    (2004, '22049', 'Hamburg'),
    (2005, '22835', 'Barsbüttel'),
    (2006, '21075', 'Hamburg'),
    (2007, '21079', 'Hamburg'),
    (2008, '21149', 'Hamburg'),
    (2009, '22605', 'Hamburg'), 
    (2010, '24354', 'Weseby'),
    (2011, '21635', 'Jork'),
    (2012, '19217', 'Dechow');

insert into adresse 
values
    (2001, 'Eppendorfer Landstrasse', '104', 2001),
    (2002, 'Ohmstraße', '23', 2002),
    (2003, 'Bilser Berg', '6', 2003),
    (2004, 'Alter Teichweg', '95', 200),
    (2005, 'Stübels', '10', 2005),
    (2006, 'Grotelertwiete', '4a', 2006),
    (2007, 'Küstersweg', '3', 2007),
    (2008, 'Neugrabener Bahnhofstraße', '30', 2008),
    (2009, 'Elbchaussee', '228', 2009),
    (2010, 'Dorfstraße', '74', 2010),
    (2011, 'Westerjork', '76', 2011),
    (2012, 'Molkereiwegkundekunde', '13', 2012);

-- Kunden
insert into kunde
values
    (2001,'Kira','Wellensteyn','k.wellensteyn@yahoo.de','040/443322',2001),
    (2002,'Dorothea','Foede','d.foede@web.de','040/543822',2002),
    (2003,'Sigrid','Leberer','sigrid@leberer.de','0175/1234588',2003),
    (2004,'Hanna','Soerensen','h.soerensen@yahoo.de','040/634578',2003),
    (2005,'Marten','Schnitter','schni_mart@gmail.com','0176/447587',2004),
    (2006,'Belinda','Maurer','belinda1978@yahoo.de','040/332189',2006),
    (2007,'Gessert','Armin','armin@gessert.de','040/443322',2007),
    (2008,'Jean-Marc','Haessig','jm@haessig.de','0178-67013390',2008),
    (2009,'Eric','Urocki','urocki@outlook.de','0152-96701390',2009),


-- Lieferant
insert into lieferant
values 
    (101, 'Bio-Hof Müller', 2010, '04354-9080', 'mueller@biohof.de'),
    (102, 'Obst-Hof Altes Land', 2011, '04162-4523', 'info@biohof-altesland.de'),
    (103, 'Molkerei Henning', 2012, '038873-8976', 'info@molkerei-henning.de');