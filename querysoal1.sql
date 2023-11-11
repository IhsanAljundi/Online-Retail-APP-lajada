USE lajada;
SELECT COUNT(DISTINCT Product_ID) AS jumlah_produk_yang_dibeli
FROM OrderDetail
WHERE Order_ID IN (SELECT Order_ID FROM Orders WHERE Customer_ID = 1)
HAVING jumlah_produk_yang_dibeli >= 3;
