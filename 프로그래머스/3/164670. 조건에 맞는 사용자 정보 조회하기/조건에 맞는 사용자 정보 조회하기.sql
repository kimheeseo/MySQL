-- 코드를 입력하세요
select B.USER_ID as USER_ID, B.NICKNAME, concat(B.CITY,' ',B.STREET_ADDRESS1,' ',B.STREET_ADDRESS2) as '전체주소', concat(left(B.TLNO,3),'-',mid(B.TLNO,4,4),'-',right(B.TLNO,4)) as '전화번호' from USED_GOODS_USER B

    where USER_ID in (SELECT A.WRITER_ID from USED_GOODS_BOARD A
    group by A.WRITER_ID
    having count(A.WRITER_ID)>2
    order by A.WRITER_ID)
    order by USER_ID desc;