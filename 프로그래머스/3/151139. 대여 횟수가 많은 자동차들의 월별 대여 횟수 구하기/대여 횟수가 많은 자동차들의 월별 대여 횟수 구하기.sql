select month(START_DATE) as MONTH, CAR_ID, count(CAR_ID) AS RECORDS from CAR_RENTAL_COMPANY_RENTAL_HISTORY A

    where month(START_DATE) between 8 and 10 and
    CAR_ID in (select CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where month(START_DATE) between 8 and 10           
    group by CAR_ID
    having count(CAR_ID)>=5)
    group by month(START_DATE), CAR_ID
    order by month(START_DATE), CAR_ID desc;