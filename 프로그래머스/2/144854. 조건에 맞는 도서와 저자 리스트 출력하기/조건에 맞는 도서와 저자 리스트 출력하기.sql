-- 코드를 입력하세요
SELECT A.BOOK_ID, B.AUTHOR_NAME, date_format(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE  from BOOK A
    inner join AUTHOR B
    on A.AUTHOR_ID = B.AUTHOR_ID
    where A.CATEGORY like('%경제%')
    order by PUBLISHED_DATE;