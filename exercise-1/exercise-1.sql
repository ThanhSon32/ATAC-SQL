-- Liệt kê tất cả các sản phẩm (Products) cùng với giá (UnitPrice) và số lượng tồn kho (UnitsInStock).
SELECT ProductName, UnitPrice, UnitsInStock 
FROM Products;

-- Tìm tất cả các đơn hàng có ngày đặt hàng (OrderDate) trong năm 1997
SELECT * 
FROM Orders 
WHERE strftime('%Y', OrderDate) = '1997';

