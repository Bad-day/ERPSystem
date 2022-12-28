SELECT product_name as '제품명', product_code as '제품 코드', product_price as '제품 가격', product_stock as '재고', brand_name as '브랜드명' 
FROM product as p
right join brand as b on p.product_brand_name = b.brand_name