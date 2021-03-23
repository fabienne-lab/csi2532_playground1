CREATE TABLE athletes (
 id int(5),
 name varchar(300),
 birthday varchar(10),
 gender varchar(6),
 PRIMARY KEY (id)
 );

 CREATE TABLE competitions (
   id int(3), --id des competions tel que vol-223 pour le volley-ball par Exemple
   name varchar (300), -- le nom de competion au complet
   venue varchar (300), -- venue de l'evenement
   str_date date, -- la date prevu pour le debut de l'evement

   duration time, --duree de la competition
   PRIMARY KEY(comp_id)
 );
