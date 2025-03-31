-- Liệt kê danh sách các sản phẩm (Products) cùng với tên danh mục (Categories) và tên nhà cung cấp (Suppliers).
SELECT p.ProductName, c.CategoryName, s.CompanyName
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- Tìm tất cả các khách hàng (Customers) có tên công ty chứa chữ "Market"
SELECT *
FROM Customers
WHERE CompanyName LIKE '%Market%';

-- End.