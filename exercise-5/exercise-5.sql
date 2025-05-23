-- Liệt kê danh sách các khách hàng trong bảng Customers nhưng không có đơn hàng nào trong bảng Orders.
SELECT c.CustomerID
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- Hiển thị tên khách hàng (CompanyName) và tổng doanh thu họ đã chi tiêu, sắp xếp giảm dần và chỉ lấy khách hàng chi tiêu nhiều nhất.
SELECT a.CompanyName, Sum(c.UnitPrice*c.Quantity)
FROM Customers a
INNER JOIN Orders b ON a.CustomerID = b.CustomerID
INNER JOIN "Order Details" c ON b.OrderID = c.OrderID
GROUP BY a.CompanyName
ORDER BY Sum(c.UnitPrice*c.Quantity) DESC
LIMIT 1

-- End.