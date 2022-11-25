select a.ename,b.ename from emp a,emp b where a.mgr=b.empno(+) and a.sal>=2000;

select ename，job,sal from emp where sal>(select sal from emp where ename='JONES');

select * from emp where deptno in (select distinct deptno from emp where sal between 1000 and 3000);

select ename from emp where hiredate<=add_months(sysdate,-288);

select ename,sal,dname from emp,dept where emp.deptno=dept.deptno and hiredate<=to_date('1981-07-01','yyyy-mm-dd');

select to_char(hiredate,'yyyy-mm'),loc,count(*) from emp,dept where emp.deptno=dept.deptno group by to_char(hiredate,'yyyy-mm'),loc;

select dname from dept where deptno=(select deptno from (select deptno from emp group by deptno order by avg(sal) ) where rownum<=1)
union all select dname from dept where deptno=(select deptno from (select deptno from emp group by deptno order by avg(sal) desc ) where rownum<=1);

insert into dept values (50,'MANAGEMENT','JINAN');