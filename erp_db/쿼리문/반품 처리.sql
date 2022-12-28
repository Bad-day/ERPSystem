update take_back, product
set tb_stat="반품완료",product_stock=if(ISNULL(tb_stock)!=0,tb_stock,tb_stock+product_stock)
where tb_stat="반품" and product_code=tb_code;