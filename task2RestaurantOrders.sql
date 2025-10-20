-- INIT database
CREATE TABLE CUSTOMERS (
  CUSTOMER_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT NOT NULL,
  Phone TEXT
);

CREATE TABLE MENU_ITEMS (
  ITEM_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT NOT NULL,
  PRICE REAL NOT NULL
);

CREATE TABLE ORDERS (
  ORDER_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  CUSTOMER_ID INTEGER,
  ITEM_ID INTEGER,
  QUANTITY INTEGER,
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (CUSTOMER_ID),
  FOREIGN KEY (ITEM_ID) REFERENCES MENU_ITEMS (ITEM_ID)
);

-- მონაცემების დამატება
INSERT INTO CUSTOMERS (Name, Phone) VALUES 
('Tiko', '555123456'),
('Mariam', '551987654'),
('Nikoloz', '559456789');

INSERT INTO MENU_ITEMS (Name, Price) VALUES 
('Espresso', 8.0),
('Latte', 10.0),
('Americano', 5.5);

INSERT INTO ORDERS (CUSTOMER_ID, ITEM_ID, QUANTITY) VALUES 
(1, 2, 1),
(2, 3, 1),
(3, 1, 2);
-- (sum, join)
SELECT 
    c.name AS Customer,
    SUM(m.price * o.quantity) AS Total_Spending
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN menu_items m ON o.item_id = m.item_id
GROUP BY c.customer_id;
--(update)
UPDATE menu_items
SET price = 9.5
WHERE name = 'Latte';
--(delete)
DELETE FROM orders
WHERE order_id = 3;
--(check)
SELECT * FROM CUSTOMERS;
SELECT * FROM MENU_ITEMS;
SELECT * FROM ORDERS;