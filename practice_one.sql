
/**Grocery list:
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4); 
INSERT INTO groceries VALUES (2, "Peanut Butter", 1); 
INSERT INTO groceries VALUES (3, "Dark Chocolate Bars", 4); 
INSERT INTO groceries VALUES (4, "Ice Cream", 7); 
INSERT INTO groceries VALUES (5, "Cherries", 5); 
INSERT INTO groceries VALUES (6, "Chocolate Syrup", 4); 

SELECT MAX("quantity") FROM groceries;

CREATE TABLE exercise_log
(id INTEGER PRIMARY KEY, type TEXT, minutes INTEGER, calories INTEGER, heart_rate INTEGER);
INSERT INTO exercise_log VALUES (1,"running", 30, 200, 160);
INSERT INTO exercise_log VALUES (2,"walking", 45, 150, 120);
INSERT INTO exercise_log VALUES (3,"dancing", 60, 700, 160);
INSERT INTO exercise_log VALUES (4,"dancing", 60, 700, 160);
INSERT INTO exercise_log VALUES (5,"lifting", 60, 500, 150);
INSERT INTO exercise_log VALUES (6,"tennis", 60, 550, 140);
/* AND*/
SELECT * FROM exercise_log WHERE calories > 200 AND minutes > 40;

/*OR*/
SELECT * FROM exercise_log WHERE calories > 300 OR heart_rate > 150;
SELECT * FROM exercise_log WHERE type = "dancing"; 
SELECT * FROM exercise_log WHERE type = "dancing" OR type = "lifting" OR type = "walking";

/*IN*/
SELECT * FROM exercise_log WHERE type IN ("dancing", "lifting", "walking");


CREATE TABLE drs_favorites
(id INTEGER PRIMARY KEY, type TEXT, reason TEXT);

INSERT INTO drs_favorites VALUES (1, "biking", "improve strength");
INSERT INTO drs_favorites VALUES (2, "walking", "improve heart rate");
INSERT INTO drs_favorites VALUES (3, "swimming", "improve endurance");

SELECT * FROM drs_favorites;
SELECT * FROM exercise_log WHERE type IN (SELECT "walking" FROM drs_favorites);

/*LIKE*/
SELECT * FROM exercise_log WHERE type IN (SELECT type FROM drs_favorites WHERE reason LIKE "%improve%");

