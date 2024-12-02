
CREATE TABLE sales_contracts(
contract_id int auto_increment primary key,
contract_date date,
sale_type varchar(50),
foreign key (VIN) references vehicles(VIN),
VIN varchar(50)
);