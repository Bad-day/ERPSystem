SELECT Sta_name, charge_br,  
	CASE
		WHEN	sta_att>20	THEN '정상'
        WHEN	sta_att<=20	THEN '주의'
        WHEN	sta_att<=15 THEN '경고'
	END as Sta_Stat, 
    Sta_pay/30*Sta_Att as Sta_pay  FROM staff
	