
select count(*), B.FISH_NAME as FISH_NAME from FISH_NAME_INFO B, FISH_INFO A
    group by B.FISH_NAME
    order by B.FISH_NAME