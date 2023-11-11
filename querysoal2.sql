USE lajada;
SELECT Product_ID, COUNT(*) AS Jumlah_Pembelian
FROM OrderDetail
GROUP BY Product_ID
ORDER BY Jumlah_Pembelian DESC
LIMIT 3;
