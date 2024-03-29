SELECT COUNT(FISH_TYPE) AS FISH_COUNT, MAX(LENGTH) AS MAX_LENGTH, FISH_TYPE
    FROM FISH_INFO
    group by fish_type
    having avg(ifnull(length,10)) >= 33
    order by fish_type