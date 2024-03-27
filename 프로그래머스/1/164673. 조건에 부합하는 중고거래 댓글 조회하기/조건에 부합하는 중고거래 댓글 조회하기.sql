select A.title, A.board_id, B.reply_id, B.writer_id, B.contents, date_format(B.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE from USED_GOODS_BOARD A
    inner join USED_GOODS_REPLY B
    on A.board_id = B.board_id
    where A.created_date like('2022-10%')
    order by B.created_date, A.title;