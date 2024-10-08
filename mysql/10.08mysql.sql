create database zs;
use zs;
show database;
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
-- LIMIT 分页查询 LIMIT [跳过的个数],[跳过后提取的个数]
SELECT * FROM t1 LIMIT 5,3;
SELECT * FROM t1 LIMIT 10,99;
SELECT * FROM t1 LIMIT 10,5;
SELECT * FROM t1 LIMIT 20,10;
SELECT * FROM t1 LIMIT 10;
SELECT * FROM t1 LIMIT 10,10;
SELECT * FROM t1 LIMIT 20,10;
SELECT * FROM t1 LIMIT 30,10;
SELECT * FROM t1 LIMIT 15,5;
create table t2(
    tid varchar(4),
    tname varchar(8),
    age int,
    sex varchar(2),
    cid varchar(4)
);

insert into t2 values('t001','张三',18,'男','c001');
insert into t2 values('t002','李四',28,'女','c001');
insert into t2 values('t003','王五',25,'男','c002');
insert into t2 values('t004','照片',31,'女','c002');
insert into t2 values('t005','洪七',19,'女','c002');

select * from t2;
drop SELECT t2;
SELECT sex,COUNT(*) 人数,SUM(age) 总年龄,AVG(age)平均年龄 FROM t2 GROUP BY sex;
INSERT INTO t2 VALUES('t006','洪8','29','男','c002');
INSERT INTO t2 VALUES('t007','洪9','17','女','c001');
SELECT cid,sex,count(*) 总人数,AVG(age) 平均年龄 FROM t2 GROUP BY cid,sex HAVING AVG(age)>=20;
DELETE FROM t2 WHERE tid='t001';
SELECT cid,count(*) FROM t2 GROUP BY cid HAVING COUNT(*)<4;

create table student(
    sid varchar(4),
    sname varchar(8), 
    cid varchar(4)
);
insert into student values('s001','张三','c001');
insert into student values('s002','李四','c001');
insert into student values('s003','王五','c002');

create table cls(
    cid varchar(4),
    cname varchar(8)
);

insert into cls values('c001','飞天班');
insert into cls values('c002','飞龙班');

select * from student;
select * from cls;

SELECT * FROM student,cls WHERE student.cid=cls.cid;

