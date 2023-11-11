USE lajada;
SELECT Customer_ID, AVG(Total_Transaksi) AS Rata_Rata_Transaksi
FROM (
    SELECT Customer_ID, SUM(Harga_Satuan * Kuantitas) AS Total_Transaksi
    FROM OrderDetail
    JOIN Orders ON OrderDetail.Order_ID = orders.Order_ID
    WHERE Tanggal_Pesanan BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW()
    GROUP BY OrderDetail.Order_ID, Customer_ID
) AS Subquery
GROUP BY Customer_ID;