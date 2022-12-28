select brand_name as '브랜드명' ,pro_code as '제품코드',pro_Stat as '입출고 상태',pro_sum as '수량' 
from product_s,brand
where pro_stat='입고종료' or pro_stat='출고종료'