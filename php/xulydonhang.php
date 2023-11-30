<?php
require_once('../BackEnd/ConnectionDB/DB_classes.php');

// Assuming $db is an instance of DB_driver
$db = new DB_driver();
$db->connect();

// Check if the request is present in either POST or GET
if (!isset($_POST['request']) && !isset($_GET['request'])) {
    die(null);
}

// Handle the request based on the provided 'request' parameter
switch ($_POST['request']) {
    case 'getall':
        // Retrieve data for 'getall' request
        $donhang = (new HoaDonBUS())->select_all();
        $ctdonhang = (new ChiTietHoaDonBUS())->select_all();
        die(json_encode($donhang));
        break;

    case 'update':
        // Check if required parameters are set for 'update' request
        if (isset($_POST['maDonHang']) && isset($_POST['trangThai'])) {
            $id = $_POST['maDonHang'];
            $trangThai = $_POST['trangThai'];

            // Construct the update query using prepared statements
            $query = "UPDATE HoaDon SET TrangThai = ? WHERE MaHD = ?";

            // Prepare the statement
            $stmt = $db->prepare($query);

            if ($stmt) {
                // Bind parameters to the prepared statement
                $stmt->bind_param('si', $trangThai, $id);

                // Execute the statement
                $result = $stmt->execute();

                // Check if the update was successful
                if ($result) {
                    die(json_encode(['success' => true, 'message' => 'Update successful.']));
                } else {
                    die(json_encode(['success' => false, 'message' => 'Update failed.']));
                }

                // Close the statement
                $stmt->close();
            } else {
                die(json_encode(['success' => false, 'message' => 'Failed to prepare statement.']));
            }
        } else {
            die(json_encode(['success' => false, 'message' => 'Missing parameters for update request.']));
        }
        break;

    default:
        // Handle other requests if needed
        die(json_encode(['success' => false, 'message' => 'Invalid request.']));
        break;
}
?>
