UPDATE Product, sales, product_s
set product_stock=if(isnull(product_stock)!=0,sales_count,product_stock + sales_count), sales_count=0, pro_Stat=if(pro_stat='입고','입고종료',if(pro_stat='출고','출고종료',NULL))
Where product_code=pro_num and (pro_Stat='출고' or pro_stat='입고') ;
