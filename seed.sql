-- creeation des 20 athletes femelles :
INSERT INTO Athletes (id, name, birthday, gender)
VALUES
(00100, 'Bintou', '25/01/1998', 'F'),
(02456, 'Fabtal', '08/12/2000', 'F'),
(01915, 'Zoumana', '07/09/1997', 'F'),
(05066, 'ayana', '29/11/1999', 'F'),
(01214, 'Lale', '15/05/2002', 'F'),
(00160, 'Baka', '25/02/1998', 'F'),
(06456, 'Fabtal', '08/12/2000', 'F'),
(03915, 'ZoumA', '07/05/1997', 'F'),
(05766, 'Bint', '29/12/1999', 'F'),
(81214, 'Lal', '15/06/2002', 'F');
-- creeation des 20 athletes males
INSERT INTO Athletes (id, name, birthday, gender)
VALUES
(00100, 'Bintou', '25/01/1998', 'M'),
(02456, 'Fabtal', '08/12/2000', 'M'),
(01915, 'Zoumana', '07/09/1997', 'M'),
(05066, 'ayana', '29/11/1999', 'M'),
(01214, 'Lale', '15/05/2002', 'M'),
(00160, 'Baka', '25/02/1998', 'M'),
(06456, 'Fabtal', '08/12/2000', 'M'),
(03915, 'ZoumA', '07/05/1997', 'M'),
(05766, 'Bint', '29/12/1999', 'M'),
(81214, 'Lal', '15/06/2002', 'M');
-- Créez 5 compétitions (nom, date, etc.)
INSERT INTO competitions (id, name, venue, str_date,duration)
VALUES
(01,"volley","mars","23/05/2001",12:22:33),
(02,"basket","mars","23/05/2001",09:22:33),
(03,"handball","mars","23/05/2001",08:06:33),
(04,"socker","mars","23/05/2001",11:22:33),
(05,"Football","mars","23/05/2001",16:22:33);
