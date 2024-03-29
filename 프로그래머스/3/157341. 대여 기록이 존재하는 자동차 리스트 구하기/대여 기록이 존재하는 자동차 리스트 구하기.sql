-- 코드를 입력하세요
SELECT distinct A.CAR_ID from CAR_RENTAL_COMPANY_CAR A
    inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY B
    on A.CAR_ID = B.CAR_ID
    
    where A.CAR_TYPE='세단' and month(B.START_DATE) = 10
    order by CAR_ID desc;