USE lajada;
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Tanggal_Pesanan DATE,
    Customer_ID INT,
    Status_Pesanan VARCHAR(50),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
