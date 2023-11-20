<?php
	require_once ("../BackEnd/ConnectionDB/DB_classes.php");

	if(!isset($_POST['request']) && !isset($_GET['request'])) die();

	session_start();

	switch ($_POST['request']) {
		case 'dangnhap':
			dangNhap();
			break;

		case 'dangxuat':
			dangXuat();
			break;

		case 'dangky':
			dangKy();
			break;

		case 'getCurrentUser':
			if(isset($_SESSION['currentUser'])) {
				die (json_encode($_SESSION['currentUser']));
			}
			die (json_encode(null));
			break;
		default:
			# code...
			break;
	}

	function dangXuat() {
		if(isset($_SESSION['currentUser'])) {
			unset($_SESSION['currentUser']);
			die ("ok");
		}
		die ("no_ok");
	}

	function dangNhap() {
    $taikhoan = $_POST['data_username'];
    $matkhau = $_POST['data_pass'];
    $matkhau = md5($matkhau);
    $sql = "SELECT * FROM nguoidung WHERE email='$taikhoan' AND MatKhau='$matkhau'";
    $result = (new DB_driver())->get_row($sql);
    if ($result) {
        $_SESSION['currentUser'] = $result;
        die(json_encode($result));
    } else {
        echo "Login failed!";
        die(json_encode(null));
    }
}


	function dangKy() {
		$xuli_fullname=$_POST['data_fullname'];
		$xuli_sdt=$_POST['data_sdt'];
		$xuli_email=$_POST['data_email'];
		$xuli_diachi=$_POST['data_diachi'];
		$xuli_password=$_POST['data_newPass'];
		$newPass=md5($xuli_password);
		$status = (new NguoiDungBUS())->add_new(array(
			"HoVaTen" => $xuli_fullname,
			"Sdt" => $xuli_sdt,
			"Email" => $xuli_email,
			"DiaChi" => $xuli_diachi,
			"MatKhau" => $newPass,
			"MaQuyen" => "USER",
		));
		// đăng nhập vào ngay
		$sql = "SELECT * FROM nguoidung WHERE email='$xuli_email' AND MatKhau='$newPass'";
		$result = (new DB_driver())->get_row($sql);

		if($result){
		    $_SESSION['currentUser']=$result;
		    die (json_encode($result)); 
		}  
		die (json_encode(null));
	}


function getCurrentUser() {
    if (isset($_SESSION['currentUser'])) {
        die(json_encode($_SESSION['currentUser']));
    }
    die(json_encode(null));
}
?>