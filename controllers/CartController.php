<?php 
include "models/CartModel.php";
class CartController extends Controller
{
	use CartModel;
	public function __construct()
	{
		//Neu gio hang chua ton tai thi khoi tao no
		if(isset($_SESSION["cart"]) == false){
			$_SESSION['cart'] = array();
		}
	}
	// hien thi danh sach cac san pham trong gio hang
	public function index(){
		$this->loadView("CartView.php");
	}
	// them san pham vao gio hang
	public function create(){
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		// goi ham trong model de them phan tu vao gio hang
		$this->cartAdd($id);
		header("location:index.php?controller=cart");
	}
	// xoa san pham khoi gio hang
	public function delete(){
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		// goi ham trong model de them phan tu vao gio hang
		$this->cartDelete($id);
		header("location:index.php?controller=cart");
	}
	// xoa tat ca san pham khoi gio hang
	public function destroy(){
		// goi ham trong model
		$this->cartDestroy();
		header("location:index.php?controller=cart");
	}
	// Cap nhat so luong san pham
	public function update(){
		foreach ($_SESSION['cart'] as $product) {
			$name = "product_".$product["id"];
			$number = $_POST[$name];
			$this->cartUpdate($product["id"],$number);
		}
		header("location:index.php?controller=cart");
	}
	// thanh toan gio hang
	public function checkout(){
		// kiem tra neu user chua dang nhap thi yeu cau dang nhap
		if(isset($_SESSION['customer_email']) == false){
			header("location:index.php?controller=account&action=login");
		}else{
			$this->cartCheckOut();
			header("location:index.php?controller=cart");
		}
	}
	// thuc hien ajax add san pham vao gio hang
	public function ajaxCreate(){
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		echo $id;
		$this->cartAdd($id);
		// lay so luong sp trong gio hang
		// ---
		// $numberProduct = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
		// echo $numberProduct;
		// ---
	}
	// thuc hien ajax xoa san pham khoi gio hang
	public function ajaxDelete(){
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		echo $id;
		$this->cartDelete($id);
	}
}
?>