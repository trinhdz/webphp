<?php
require_once("../BackEnd/ConnectionDB/DB_classes.php");

// Tạo đối tượng DB_driver
$db = new DB_driver();

// Kết nối đến cơ sở dữ liệu
$db->connect();

// Câu truy vấn SQL
$sqlOrder = "SELECT
            pc.tenloaihang AS Category,
            COUNT(id.MaSP) AS TotalSold
        FROM
            loaihang pc
        JOIN
            hang p ON pc.MaLSP = p.MaLSP
        JOIN
            chitiethangban id ON p.MaSP = id.MaSP
        GROUP BY
            pc.tenloaihang";

$sqlProduct = "SELECT
    pc.tenloaihang AS Category,
    SUM(p.SoLuong) AS TotalSold
FROM
    loaihang pc
JOIN
    hang p ON pc.MaLSP = p.MaLSP
GROUP BY
    pc.tenloaihang";
  
// Thực hiện truy vấn và xử lý kết quả
$resultOrder = $db->get_list($sqlOrder);
$resultProduct = $db->get_list($sqlProduct);

// Kiểm tra và trả về dữ liệu dưới dạng JSON
if ($resultOrder && $resultProduct) {
    echo json_encode(['resultOrder' => $resultOrder, 'resultProduct' => $resultProduct]);
} else {
    echo json_encode(['message' => 'Không có dữ liệu.']);
}

// Ngắt kết nối
$db->dis_connect();
?>
