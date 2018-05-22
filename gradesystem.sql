CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student
(
  sid    INT(10) PRIMARY KEY,
  sname  CHAR(20),
  gender CHAR(20) NOT NULL
 );

CREATE TABLE course
(
  cid     INT(10) PRIMARY KEY,
  cname   CHAR(20), 
 );
 
CREATE TABLE mark
(
  mid    INT(10) PRIMARY KEY,
  sid    INT(10) NOT NULL,
  cid    INT(10) NOT NULL,
  score  CHAR(20) ,
  of_dpt     CHAR(20) REFERENCES department(dpt_name),
  CONSTRAINT proj_pk PRIMARY KEY (proj_num,proj_name)
);
