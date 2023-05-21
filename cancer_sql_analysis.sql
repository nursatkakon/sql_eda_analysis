CREATE DATABASE breast_cancer_database;
USE breast_cancer_database;
SELECT * FROM breast_cancer_data;
SELECT diagnosis, count(*) FROM breast_cancer_data group by diagnosis;

