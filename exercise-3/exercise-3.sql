-- Liệt kê danh sách các sản phẩm (Products) cùng với tên danh mục (Categories) và tên nhà cung cấp (Suppliers).
SELECT a.ProductName, b.CategoryName, c.CompanyName
FROM Products a
INNER JOIN Categories b on a.CategoryID = b.CategoryID
INNER JOIN Suppliers c on a.SupplierID = c.SupplierID

-- Tìm tất cả các khách hàng (Customers) có tên công ty chứa chữ "Market"
SELECT *
FROM Customers
WHERE CompanyName LIKE '%Market%';

-- End.