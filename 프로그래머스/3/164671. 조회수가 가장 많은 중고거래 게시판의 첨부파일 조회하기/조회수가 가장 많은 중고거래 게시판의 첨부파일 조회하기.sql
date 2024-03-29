SELECT CONCAT("/","home/grep/src","/",b.BOARD_ID,"/",FILE_ID,FILE_NAME, FILE_EXT)FILE_PATH
FROM USED_GOODS_BOARD as b, USED_GOODS_FILE as f
WHERE b.BOARD_ID = f.BOARD_ID
AND VIEWS = (SELECT MAX(VIEWS) 
             FROM USED_GOODS_BOARD)
order by FILE_ID desc