SET SQL_SAFE_UPDATES = 0;

UPDATE product_s, sales
SET sales_count=if(isNull(sales_count)!=0,pro_sum,sales_count+pro_sum)
where pro_num=pro_code and pro_Stat='입고';

UPDATE product_s, sales
SET sales_count=if(isNull(sales_count)!=0,-1*pro_sum,sales_count+(-1*pro_sum))
where pro_num=pro_code and pro_Stat='출고';