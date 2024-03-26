select ID, EMAIL, FIRST_NAME, LAST_NAME from DEVELOPER_INFOS 
    where SKILL_1 like 'python'
    OR SKILL_2 like 'python'
    OR SKILL_3 like 'python'
    order by ID;