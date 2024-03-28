select C.ANIMAL_ID, C.NAME from (select A.ANIMAL_ID, A.NAME, datediff(B.DATETIME,A.DATETIME) date,A.DATETIME as date2, B.DATETIME as date3 from ANIMAL_INS A
    inner join ANIMAL_OUTS B
    on A.ANIMAL_ID = B.ANIMAL_ID
    group by ANIMAL_ID
    order by date desc
    limit 2) C