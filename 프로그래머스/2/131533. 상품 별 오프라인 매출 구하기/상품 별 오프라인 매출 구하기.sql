-- 코드를 입력하세요
SELECT A.PRODUCT_CODE, sum(A.price*B.SALES_AMOUNT) as sales from product A
    inner join OFFLINE_SALE B
    on A.PRODUCT_ID=B.PRODUCT_ID
    
    group by PRODUCT_CODE
    order by sales desc, PRODUCT_CODE;
    