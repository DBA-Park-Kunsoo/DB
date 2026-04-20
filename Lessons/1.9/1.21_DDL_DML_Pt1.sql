--.read Lessons/1.9/1.21_DDL_DML_Pt1.sql

USE data_jobs;

DROP DATABASE IF EXISTS jobs_mart;

CREATE DATABASE IF NOT EXISTS jobs_mart;

SHOW DATABASES;

SELECT *
FROM information_schema.schemata;

use jobs_mart;

DROP SCHEMA if exists staging;
CREATE SCHEMA if not exists staging;



CREATE TABLE if not exists staging.preferred_roles (
    role_id INTEGER,
    role_name VARCHAR
);

SELECT *
FROM information_schema.tables
WHERE table_catalog = 'jobs_mart';

drop table if EXISTS main.preferred_roles;