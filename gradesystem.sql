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
  score  INT(10) NOT NULL,
  CONSTRAINT mar_fk FOREIGN KEY (sid) REFERENCES student(sid),
  CONSTRAINT mar_fk FOREIGN KEY (cid) REFERENCES course(cid),
);
