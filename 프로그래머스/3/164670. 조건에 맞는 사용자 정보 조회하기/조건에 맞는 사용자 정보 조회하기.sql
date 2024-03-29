select B.USER_ID, B.NICKNAME, concat(B.CITY,' ',B.STREET_ADDRESS1, ' ',B.STREET_ADDRESS2) as 전체주소, concat(left(B.TLNO,3),'-',mid(B.TLNO,4,4),'-',right(B.TLNO,4))  from USED_GOODS_USER B
    inner join USED_GOODS_BOARD A
    on B.USER_ID = A.WRITER_ID
    
    where B.USER_ID in (select A.WRITER_ID from USED_GOODS_BOARD A    
    group by A.WRITER_ID
    having count(A.WRITER_ID)>=3
    order by A.WRITER_ID)
    group by B.USER_ID, B.NICKNAME
    order by B.USER_ID desc
