CREATE TABLE BRAND(
    brand_name VARCHAR(100)  PRIMARY KEY,
    brand_kind_num INT,
    brand_account VARCHAR(100),
    brand_tel INT(50)   
);
CREATE TABLE CLIENTS (
   clients_num   VARCHAR(50)    PRIMARY KEY,
   clients_name  VARCHAR(100)    ,
   clients_add   TEXT          ,
   clients_tel   VARCHAR(20)    ,
   clients_note  TEXT
);
CREATE TABLE PRODUCT(
   product_code VARCHAR(100)   PRIMARY KEY,
   product_name VARCHAR(100)   ,
    product_brand_name   VARCHAR(100)   ,
    product_price   INT   ,
    product_stock   INT
);
CREATE TABLE product_S(
	pro_code	VARChar(100)	primary key,
    pro_Stat	VARCHAR(50),
    pro_sum		int,
    FOREIGN KEY (`pro_code`) REFERENCES `product` (`product_code`)
);
CREATE TABLE SALES(
   pro_num    VARCHAR(100)    PRIMARY KEY,
   sales_count    INT,
   FOREIGN KEY (`pro_num`) REFERENCES `product_s` (`pro_code`)
);
CREATE TABLE STAFF (
   charge_br       VARCHAR(100)    PRIMARY KEY,
   Sta_pay       INT    ,
   Sta_Att         INT      ,
   Sta_name VARCHAR(50) ,
   Sta_Stat   VARCHAR(100)
);
create table take_back(
	tb_code		varchar(100)	primary key,
    tb_name		varchar(100),
    tb_stock	int,
    tb_stat		varchar(100),
    FOREIGN KEY (`tb_code`) REFERENCES `product_s` (`pro_code`)
)
