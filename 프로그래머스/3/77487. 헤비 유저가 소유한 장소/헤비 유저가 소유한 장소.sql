select ID, NAME, HOST_ID from PLACES
    where HOST_ID in (
    select HOST_ID from PLACES
    group by HOST_ID
    having count(ID)>1
        -- 2개 등록해야 헤비유저니까, count(ID)>1로 설정
    )
    order by ID;