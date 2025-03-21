-- Cập nhật (UPDATE) giá sản phẩm tăng 10% cho tất cả các sản phẩm thuộc danh mục có tên là "Beverages".
UPDATE Products
SET UnitPrice = UnitPrice * 1.10
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages');

-- Thêm (INSERT) một sản phẩm mới có tên "Organic Coffee" và bảng Products, thuộc danh mục "Beverages", 
--có giá 25.00, số lượng tồn kho là 100, và được cung cấp bởi một nhà cung cấp (Suppliers) bất kỳ
INSERT INTO Products (ProductName, CategoryID, UnitPrice, UnitsInStock, SupplierID)
VALUES (
    'Organic Coffee',
    (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages'),
    25.00,
    100,
    (SELECT SupplierID FROM Suppliers LIMIT 1)  -- Choosing any supplier by using LIMIT 1
);