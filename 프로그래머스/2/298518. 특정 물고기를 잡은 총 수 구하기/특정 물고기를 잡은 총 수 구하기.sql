select count(*) as FISH_COUNT from fish_info A
    inner join fish_name_info B
    on A.fish_type = B.fish_type
    where A.length is not null and B.FISH_NAME = 'BASS' or B.FISH_NAME='SNAPPER';
    

    