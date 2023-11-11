USE lajada;
CREATE TABLE OrderDetail (
    OrderDetail_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Kuantitas INT(8),
    Harga_Satuan INT(8),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);