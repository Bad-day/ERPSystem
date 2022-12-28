update staff
set sta_stat= (CASE
		WHEN	sta_att>20	THEN '정상'
        WHEN	sta_att<=20 and sta_att>15	THEN '주의'
        WHEN	sta_att<=15 THEN '경고'
	END )