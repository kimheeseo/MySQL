SELECT  ao.animal_id, 
        ao.name
FROM animal_ins AS ai
    RIGHT JOIN (
        SELECT *
        FROM animal_outs) AS ao
    ON ao.animal_id = ai.animal_id
WHERE
ai.datetime IS NULL