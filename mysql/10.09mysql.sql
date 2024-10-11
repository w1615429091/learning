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
insert into student values('s003','王飞','c001');

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

CREATE VIEW st02 as SELECT * FROM student WHERE cid=(SELECT cid FROM student WHERE sname = '张三');

SELECT * FROM student;
SELECT * FROM st02;

SET autocommit = 0;

DELETE FROM student;

SELECT * FROM student;

ROLLBACK;

SELECT * FROM student;

INSERT INTO cls VALUES ( 'c005','警察班');
SELECT * FROM cls;

ROLLBACK;
drop table stu;
create table stu(
sid varchar(4) primary key,
sname varchar(8)
);
insert into stu values('t001','张三');select * from stu;
insert into stu values('t001','李四');
insert into stu(sname) values('张三');

select * from stu;

DROP TABLE cls3;
CREATE TABLE cls3(
cid VARCHAR(4)PRIMARY KEY,
cname VARCHAR(8)
);
drop table stu3;
create table stu3(
sid varchar(4) primary key,
sname varchar(8),
cid varchar(4),
foreign key wj(cid) references cls3(cid)
);

insert into cls3 values('c001','飞天班');
insert into cls3 values('c002','飞龙班');
insert into stu3 values('s001','张三','c001');
insert into stu3 values('s002','张三','c002');
insert into stu3 values('s003','王五','c003');
SELECT * FROM cls3;
SELECT * FROM stu3;
DROP TABLE stu4;
CREATE TABLE stu4(
sid VARCHAR(4),
sname VARCHAR(8),
age int,
sex VARCHAR(2),
CHECK(age>=0 and age<=150),
CHECK(sex in ('男','女'))
);

INSERT INTO stu4 VALUES ('s001','张三',18,'男');
SELECT * FROM stu4;
INSERT INTO stu4 VALUES ('s002','张桑',-50,'男');
INSERT INTO stu4 VALUES ('s002','李桑',150,'mm');

drop database test01;
create database test01;
use test01;

drop table  emp;
drop table  dept;
drop table salgrade;

create table dept
(
    deptno int primary key,
    dname varchar(20),
    loc varchar(30)
);



create table emp
(
    empno int primary key,
    ename varchar(20),
    job varchar(9),
    mgr int,
    hiredate date,
    sal double,
    comm double,
    deptno int,
  foreign key (deptno) references dept (deptno)
);
 
create table salgrade (
    grade numeric primary key,
    losal int,
    hisal int
);
 
insert into DEPT (DEPTNO, DNAME, LOC) values (10, 'ACCOUNTING', 'NEW YORK');
insert into DEPT (DEPTNO, DNAME, LOC) values (20, 'RESEARCH', 'DALLAS');
insert into DEPT (DEPTNO, DNAME, LOC) values (30, 'SALES', 'CHICAGO');
insert into DEPT (DEPTNO, DNAME, LOC) values (40, 'OPERATIONS', 'BOSTON');
 
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7369, 'SMITH', 'CLERK', 7902, str_to_date('17-12-1980', '%d-%m-%Y'), 800,null,20);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7499, 'ALLEN', 'SALESMAN', 7698, str_to_date('20-02-1981', '%d-%m-%Y'),1600, 300, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7521, 'WARD', 'SALESMAN', 7698, str_to_date('22-02-1981', '%d-%m-%Y'),1250, 500, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7566, 'JONES', 'MANAGER', 7839, str_to_date('02-04-1981', '%d-%m-%Y'),2975, null, 20);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7654, 'MARTIN', 'SALESMAN', 7698, str_to_date('28-09-1981', '%d-%m-%Y'),1250, 1400, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7698, 'BLAKE', 'MANAGER', 7839, str_to_date('01-05-1981', '%d-%m-%Y'),2850, null, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7782, 'CLARK', 'MANAGER', 7839, str_to_date('09-06-1981', '%d-%m-%Y'),2450, null, 10);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7788, 'SCOTT', 'ANALYST', 7566, str_to_date('19-04-1987', '%d-%m-%Y'),3000,null, 20);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7839, 'KING', 'PRESIDENT', null, str_to_date('17-11-1981', '%d-%m-%Y'),5000,null, 10);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7844, 'TURNER', 'SALESMAN', 7698, str_to_date('08-09-1981', '%d-%m-%Y'),1500, 0, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7876, 'ADAMS', 'CLERK', 7788, str_to_date('23-05-1987', '%d-%m-%Y'),1100,null, 20);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7900, 'JAMES', 'CLERK', 7698, str_to_date('03-12-1981', '%d-%m-%Y'),950,null, 30);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7902, 'FORD', 'ANALYST', 7566, str_to_date('03-12-1981', '%d-%m-%Y'),3000,null, 20);
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)values (7934, 'MILLER', 'CLERK', 7782, str_to_date('23-01-1982', '%d-%m-%Y'),1300,null, 10);
 


 
insert into salgrade values (1, 700, 1200);
insert into salgrade values (2, 1201, 1400);
insert into salgrade values (3, 1401, 2000);
insert into salgrade values (4, 2001, 3000);
insert into salgrade values (5, 3001, 9999);

SELECT * FROM EMP;
SELECT * FROM salgrade;
SELECT * FROM DEPT;
