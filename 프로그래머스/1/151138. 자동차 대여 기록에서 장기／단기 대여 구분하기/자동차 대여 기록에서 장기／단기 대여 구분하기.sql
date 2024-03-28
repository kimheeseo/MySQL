-- 코드를 입력하세요
SELECT history_id, car_id, date_format(start_date,'%Y-%m-%d') as START_DATE, date_format(end_date,'%Y-%m-%d') as END_DATE,
    case
        when datediff(END_DATE, START_DATE) >=29 then '장기 대여'
        else '단기 대여'    
    end as RENT_TYPE
    
    from car_rental_company_rental_history
    where START_DATE like('2022-09%')
    order by history_id desc;