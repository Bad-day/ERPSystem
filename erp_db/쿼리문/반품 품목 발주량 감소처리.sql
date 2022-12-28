update product_s, take_back,sales
set sales_count=if(sales_count<tb_stock,0,sales_count-tb_stock),pro_sum=if(pro_sum<tb_stock,0,pro_sum-tb_stock), tb_stat="반품 및 발주수정완료"
where tb_code=pro_code and tb_stat="반품완료" and pro_stat="입고"