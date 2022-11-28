CREATE DATABASE proyecto_1_equipo_1;

USE proyecto_1_equipo_1;

CREATE TABLE data_sql (
index_sql INT NOT NULL AUTO_INCREMENT,
q10_part_1 VARCHAR(255),
q10_part_2 VARCHAR(255),
q10_part_3 VARCHAR(255),
q10_part_4 VARCHAR(255),
q10_part_5 VARCHAR(255),
q10_part_6 VARCHAR(255),
q10_part_7 VARCHAR(255),
q10_part_8 VARCHAR(255),
q10_part_9 VARCHAR(255),
q10_part_10 VARCHAR(255),
q10_part_11 VARCHAR(255),
q10_part_12 VARCHAR(255),
q10_part_13 VARCHAR(255),
q10_part_14 VARCHAR(255),
q10_part_15 VARCHAR(255),
q10_part_16 VARCHAR(255),
q10_other VARCHAR(255),
d482xta VARCHAR(255),
PRIMARY KEY (index_sql));

CREATE TABLE data_xml (
index_xml INT NOT NULL AUTO_INCREMENT,
`time` VARCHAR(255),
age VARCHAR(255),
gender VARCHAR(255),
index_sql INT NOT NULL,
PRIMARY KEY (index_xml),
CONSTRAINT fk_data_sql_data_xml
FOREIGN KEY (index_sql)
REFERENCES data_sql (index_sql) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE data_txt (
index_txt INT NOT NULL AUTO_INCREMENT,
index_sql INT NOT NULL,
q3 VARCHAR(255),
q4 VARCHAR(255),
q5 VARCHAR(255),
q6 VARCHAR(255),
q7 VARCHAR(255),
q8 VARCHAR(255),
q9 VARCHAR(255),
q11 VARCHAR(255),
q12 VARCHAR(255),
q13 VARCHAR(255),
q14 VARCHAR(255),
q15 VARCHAR(255),
q16 VARCHAR(255),
q17 VARCHAR(255),
q20 VARCHAR(255),
q21 VARCHAR(255),
q22 VARCHAR(255),
q23 VARCHAR(255),
q24 VARCHAR(255),
q25 VARCHAR(255),
q26 VARCHAR(255),
q32 VARCHAR(255),
q33 VARCHAR(255),
q34 VARCHAR(255),
q35 VARCHAR(255),
q41 VARCHAR(255),
PRIMARY KEY (index_txt),
CONSTRAINT fk_data_sql_data_txt
FOREIGN KEY (index_sql)
REFERENCES data_sql (index_sql) ON DELETE CASCADE ON UPDATE CASCADE);



