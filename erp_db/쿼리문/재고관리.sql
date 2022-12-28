SELECT brand_name as '브랜드명', p.product_code as '상품코드', p.product_name as '제품명', p.product_stock as '현재 수량'
FROM brand, product as p 
right join sales as s on p.product_code = s.pro_num