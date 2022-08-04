<?php 
session_start();
include "../application/Connection.php";
include "../application/Controller.php";
?>

<?php 
// load dong mvc dua vao tham so controller truyen len url
$controller = isset($_GET["controller"]) ? $_GET["controller"] : "Home";
$action = isset($_GET["action"]) ? $_GET["action"] : "index";

// ham ucfirst dung de viet hoa ky tu dau tien
$controllerFile = "controllers/".ucfirst($controller)."Controller.php";

// file_exists trả về true nếu file tồn tại, ngược lại trả về false
if (file_exists($controllerFile)) {
	include $controllerFile;
	$controllerClass = ucfirst($controller)."Controller";
	// khoi tao object cua class
	$obj = new $controllerClass();
	// goi den action
	$obj->$action();
}else die("File $controllerFile không tồn tại");
?>