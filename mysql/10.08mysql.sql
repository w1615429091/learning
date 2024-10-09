drop database zs;
create database zs;
use zs;
show DATABASES;
select database();

create table t1(
    tid varchar(4),
    tname varchar(8)
);

insert into t1 values('t001','张1');
insert into t1 values('t002','张2');
insert into t1 values('t003','张3');
insert into t1 values('t004','张4');
insert into t1 values('t005','张5');
insert into t1 values('t006','张6');
insert into t1 values('t007','张7');
insert into t1 values('t008','张8');
insert into t1 values('t009','张9');
insert into t1 values('t010','张10');
insert into t1 values('t011','张11');
insert into t1 values('t012','张12');
insert into t1 values('t013','张13');
insert into t1 values('t014','张14');
insert into t1 values('t015','张15');
insert into t1 values('t016','张16');
insert into t1 values('t017','张17');
insert into t1 values('t018','张18');
insert into t1 values('t019','张19');
insert into t1 values('t020','张20');
insert into t1 values('t021','张21');
insert into t1 values('t022','张22');
insert into t1 values('t023','张23');
insert into t1 values('t024','张24');
insert into t1 values('t025','张25');
insert into t1 values('t026','张26');
insert into t1 values('t027','张27');
insert into t1 values('t028','张28');
insert into t1 values('t029','张29');
insert into t1 values('t030','张30');
insert into t1 values('t031','张31');
insert into t1 values('t032','张32');
insert into t1 values('t033','张33');
insert into t1 values('t034','张34');
insert into t1 values('t035','张35');


select * from t1;

create table t2(
    tid varchar(4),
    tname varchar(8),
    age int,
    sex varchar(2),
    cid varchar(4)
);

insert into t2 values('t001','张三',18,'男','c001');
insert into t2 values('t002','李四',28,'女','c001');
insert into t2 values('t008','王9',25,'男','c001');
insert into t2 values('t004','照片',31,'女','c002');
insert into t2 values('t005','洪七',19,'女','c002');
insert into t2 values('t006','洪8',29,'男','c002');
insert into t2 values('t007','洪9',17,'女','c001');
select * from t2;


create table student(
    sid varchar(4),
    sname varchar(8), 
    cid varchar(4)
);
insert into student values('s001','张三','c001');
insert into student values('s002','李四','c001');
insert into student values('s003','王五','c002');
insert into student(sid,sname) values('s004','赵六');
insert into student(sid,sname) values('s005','洪七');

create table cls(
    cid varchar(4),
    cname varchar(8)
);

insert into cls values('c001','飞天班');
insert into cls values('c002','飞龙班');
INSERT INTO cls VALUES('c003','飞猫班');
INSERT INTO cls VALUES('c004','飞碟班');

DELETE FROM cls WHERE cname='飞碟班';

select * from student;
select * from cls;

SELECT * FROM student LEFT JOIN cls ON student.cid=cls.cid;
SELECT * FROM student RIGHT JOIN cls ON student.cid=cls.cid;

SELECT * FROM student,cls WHERE student.cid=cls.cid;

SELECT
	* 
FROM
	student
	LEFT JOIN cls ON student.cid = cls.cid UNION
SELECT
	* 
FROM
	student
	RIGHT JOIN cls ON student.cid = cls.cid;

CREATE TABLE emp(
eid VARCHAR(4),
ename VARCHAR(8),
mid VARCHAR(4)
);
DELETE FROM emp WHERE eid='e002';
INSERT INTO emp VALUES('e001','张三','NULL');
INSERT INTO emp VALUES('e002','张小一','e001');
INSERT INTO emp VALUES('e003','张小二','e002');
INSERT INTO emp VALUES('e004','张小三','e003');

SELECT * FROM emp;

SELECT * FROM emp a, emp b WHERE a.mid=b.eid;

SELECT * FROM emp a LEFT JOIN emp b on a.mid = b.eid;

SELECT a.eid,a.ename,a.mid,b.ename FROM emp a LEFT JOIN emp b on a.mid=b.eid;

SELECT * FROM t2 WHERE cid IN (SELECT cid FROM t2 WHERE tname LIKE '王%');