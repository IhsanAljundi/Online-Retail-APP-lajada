USE lajada;
SELECT Deskripsi AS Kategori, COUNT(*) AS Jumlah
FROM Product
GROUP BY Deskripsi
ORDER BY Jumlah DESC
LIMIT 1;
