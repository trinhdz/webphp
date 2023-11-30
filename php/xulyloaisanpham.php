<?php
	require_once('../BackEnd/ConnectionDB/DB_classes.php');

	if(!isset($_POST['request']) && !isset($_GET['request'])) die(null);

	switch ($_POST['request']) {
    	// lấy tất cả loại sản phẩm (hãng)
    	case 'getall':
				$dslsp = (new LoaiSanPhamBUS())->select_all();
		    	die (json_encode($dslsp));
    		break;
		case 'add':
                $data = $_POST['dataAdd'];
                $spAddArr = array(
                    'MaLSP' => $data['maLoaiSP'],
                    'tenloaihang' => $data['tenLoaiSP'],
                    'nhasx' => $data['nhaSanXuat'],
                    'HinhAnh' => $data['imgEditCompany'],
                    'Mota' => $data['moTa']
                );
                $spBUS = new LoaiSanPhamBUS();
                die (json_encode($spBUS->add_new($spAddArr)));
        break;
		      case 'edit':
                $data = $_POST['dataEdit'];
                $spAddArr = array(
                    'tenloaihang' => $data['tenLoaiSP'],
                    'nhasx' => $data['nhaSanXuat'],
                    'HinhAnh' => $data['imgEditCompany'],
                    'Mota' => $data['moTa']
                );
                $spBUS = new LoaiSanPhamBUS();
                die (json_encode($spBUS->update_by_id($spAddArr,$data['maLoaiSP'])));
            break;
		case 'delete':
            $spBUS = new LoaiSanPhamBUS();
            $maSPDel = $_POST['malsp'];
            die (json_encode($spBUS->delete_by_id($maSPDel)));
        break;
    	default:
    		# code...
    		break;
    }

?>