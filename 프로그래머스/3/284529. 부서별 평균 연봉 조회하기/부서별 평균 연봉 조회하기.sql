select A.DEPT_ID, A.DEPT_NAME_EN, ROUND(avg(B.SAL),0) as AVG_SAL from HR_DEPARTMENT A
    inner join HR_EMPLOYEES B
    on A.DEPT_ID = B.DEPT_ID 
    group by DEPT_ID
    order by AVG_SAL desc;