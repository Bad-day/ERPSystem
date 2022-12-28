select brand_name as '브랜드' , sum(product_price*pro_sum) as '총판매가격',sum(product_price*pro_sum)/10*1.5 as '실 수익',
sum(product_price*pro_sum)/10 as '수수료',sum(product_price*pro_sum)/10*3 as '브랜드 수익', brand_kind_num as '브랜드 품목 종류 갯수', if(brand_name=charge_br,sta_name,NULL) as '담당자'
from product, product_s, brand, staff
order by '총판매가격' desc