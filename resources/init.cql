CREATE KEYSPACE IF NOT EXISTS resto  WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 2};

CREATE TABLE IF NOT EXISTS resto.restaurant (id int, name varchar, borough varchar, buildingnum varchar, street varchar, zipcode int, phone text, cuisinetype varchar, PRIMARY KEY (id));

CREATE TABLE IF NOT EXISTS resto.inspection (idrestaurant int, inspectiondate date, violationcode varchar, violationdescription varchar, criticalflag varchar, score int, grade varchar, PRIMARY KEY (idrestaurant, inspectiondate));

CREATE INDEX IF NOT EXISTS index_cuisine ON resto.restaurant (cuisinetype);

CREATE INDEX IF NOT EXISTS index_grade ON resto.inspection (grade);

COPY resto.restaurant (id, name, borough, buildingnum, street, zipcode, phone, cuisinetype) FROM '/resources/restaurants.csv' WITH DELIMITER=',';

COPY resto.inspection (idrestaurant, inspectiondate, violationcode, violationdescription, criticalflag, score, grade) FROM '/resources/restaurants_inspections.csv' WITH DELIMITER=',';