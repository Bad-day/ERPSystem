UPDATE brand ,product
set brand_kind_num=(select count(product_code) from product)
where product_brand_name=brand_name;