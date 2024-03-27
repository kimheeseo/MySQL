SELECT DR_NAME, DR_ID, MCDP_CD, date_format(hire_ymd, "%Y-%m-%d") as HIRE_YMD from doctor
where MCDP_CD = "cs" or MCDP_CD = "gs"
order by hire_ymd desc, dr_name asc