-- Tính tổng doanh thu (UnitPrice * Quantity) của từng khách hàng dựa trên bảng Orders và Order Details.
SELECT a.CustomerID, SUM(b.UnitPrice * b.Quantity) AS TotalRevenue
FROM Orders a, "Order Details" b
WHERE a.OrderID = b.OrderID
GROUP BY a.CustomerID

-- Hiển thị danh sách 5 sản phẩm (Products) có giá cao nhất (UnitPrice).
SELECT * 
FROM Products 
ORDER BY UnitPrice DESC 
LIMIT 5;