-- 코드를 작성해주세요
select year(DIFFERENTIATION_DATE) as YEAR, 
    case when year(DIFFERENTIATION_DATE) = 2019 then
        (select max(SIZE_OF_COLONY) from ECOLI_DATA
                where year(DIFFERENTIATION_DATE)=2019)-SIZE_OF_COLONY

        when year(DIFFERENTIATION_DATE) =2020 then
        (select max(SIZE_OF_COLONY) from ECOLI_DATA
                where year(DIFFERENTIATION_DATE)=2020)-SIZE_OF_COLONY
        
        when year(DIFFERENTIATION_DATE) =2021 then
        (select max(SIZE_OF_COLONY) from ECOLI_DATA
                where year(DIFFERENTIATION_DATE)=2021)-SIZE_OF_COLONY
                
        end as YEAR_DEV, ID from ECOLI_DATA 
    order by YEAR, YEAR_DEV;