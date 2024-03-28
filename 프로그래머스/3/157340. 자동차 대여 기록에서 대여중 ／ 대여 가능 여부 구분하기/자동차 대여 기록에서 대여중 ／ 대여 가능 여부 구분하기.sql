-- 코드를 입력하세요
SELECT CAR_ID,
    case when count(date_format(START_DATE,'%Y-%m-%d') <= '2022-10-16' and date_format(END_DATE,'%Y-%m-%d') >= '2022-10-16') = 0 then
    '대여가능'
    else
    '대여중'
    end as AVAILABILITY 
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    
    group by car_id
    order by car_id desc;