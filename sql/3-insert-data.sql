-- Beschränkungen
insert into beschraenkung values (1001, "Laktose") ;
insert into beschraenkung values (1002, "Gluten") ;
insert into beschraenkung values (1003, "Nuss") ;
insert into beschraenkung values (1004, "Fruktose") ;

insert into beschraenkungzutat values (1001,3001);
insert into beschraenkungzutat values (1001,3002);
insert into beschraenkungzutat values (1001,3003);
insert into beschraenkungzutat values (1001,4001);
insert into beschraenkungzutat values (1004,2001);
insert into beschraenkungzutat values (1004,1011);
insert into beschraenkungzutat values (1002,6408);


-- Ernährungskategorien
insert into ernaehrungskategorie values (1001, "Vegan");
insert into ernaehrungskategorie values (1002, "Vegetarisch");
insert into ernaehrungskategorie values (1003, "Low Carb");
insert into ernaehrungskategorie values (1004, "High Carb");

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

-- Rezepte
insert into rezept values (1001, "Wiener Würstchen mit Tomate- Mozarella Salat und Süßkartoffelpommes");
insert into rezept values (1002, "Gemüsepatties mit Salat");
insert into rezept values (1003, "Couscous-bowl");

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