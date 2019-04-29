<!DOCTYPE html>
<html lang="vi">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<title>Thế giới điện thoại</title>
	<link rel="shortcut icon" href="img/favicon.ico" />

	<!-- Load font awesome icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
     crossorigin="anonymous">

     <script src="js/Jquery/Jquery.min.js"></script>

	<!-- our files -->
	<!-- css -->
	<link rel="stylesheet" href="FrontEnd/css/style.css">
	<link rel="stylesheet" href="FrontEnd/css/topnav.css">
	<link rel="stylesheet" href="FrontEnd/css/header.css">
	<link rel="stylesheet" href="FrontEnd/css/taikhoan.css">
    <link rel="stylesheet" href="FrontEnd/css/gioHang.css">
    <link rel="stylesheet" href="FrontEnd/css/nguoidung.css">
	<link rel="stylesheet" href="FrontEnd/css/footer.css">
	<!-- js -->
	<script src="data/products.js"></script>
	<script src="js/classes.js"></script>
    <script src="js/dungchung.js"></script>
    <script src="js/nguoidung.js"></script>

	<?php require_once "FrontEnd/echoHTML.php"; ?>
</head>

<body>
	<?php addTopNav(); ?>

	<section>
		<?php addHeader(); ?>

        <img src="img/banners/blackFriday.gif" alt="" style="width: 100%;">
        
        <div class="infoUser"> 

        </div>

        <div class="listDonHang"> </div>
	</section> <!-- End Section -->

	<?php addContainTaiKhoan(); addPlc(); ?>

	<div class="footer">
		<?php addFooter(); ?>
	</div>

	<i class="fa fa-arrow-up" id="goto-top-page" onclick="gotoTop()"></i>
</body>

</html>