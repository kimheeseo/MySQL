-- 코드를 입력하세요
SELECT B.INGREDIENT_TYPE, sum(A.TOTAL_ORDER) as TOTAL_ORDER from FIRST_HALF A
    inner join ICECREAM_INFO B
    on A.flavor = B.flavor
    group by B.ingredient_type
    order by TOTAL_ORDER;