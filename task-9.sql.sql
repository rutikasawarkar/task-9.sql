create table stocks(
	stock_id serial primary key,
	stock_name varchar(100),
	stock_code varchar(50),
	description text
)

insert into stocks(stock_name,stock_code,description) values 
('Wireless Mouse', 'WM123', 'A wireless mouse with ergonomic design and 2.4GHz connectivity'),
('Gaming Keyboard', 'GK456', 'RGB backlit gaming keyboard with mechanical switches'),
('Bluetooth Speaker', 'BS789', 'Portable Bluetooth speaker with high-quality sound'),
('Smartphone Case', 'SC012', 'Durable case for smartphone with a stylish design'),
('USB-C Charger', 'UC345', 'Fast charging USB-C charger with 18W power output'),
('Noise Cancelling Headphones', 'NH678', 'Over-ear headphones with active noise cancellation')

select * from stocks

1) extract stock codes starting with a specific letter(eg.'T')

select stock_name,stock_code
from stocks where stock_code ~* '^S'


2) Find descriptions containing the word "company"
select stock_name,description
from stocks where description ~* '\bcompany\b'

3)  Extract stock codes ending with digits

	SELECT stock_name, 
      stock_code
       FROM stocks
       WHERE stock_code ~ '\d$'

4)Find descriptions that start with 'Company'

SELECT stock_name, 
       description
      FROM stocks
      WHERE description ~ '^Portable Bluetooth speaker with high-quality sound'




