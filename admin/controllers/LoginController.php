<?php 
include "models/LoginModel.php";

class LoginController extends Controller{
	// ke thua class LoginModel
	use LoginModel;
	public function index(){
		// goi view
		$this->loadView("LoginView.php");
	}
	public function login(){
		// goi ham modellogin trong class LoginModel
		$this->modellogin();
	}
	// dang xuat
	public function logout(){
		// huy bien session
		unset($_SESSION['email']);
		// chuyen den 1 url khac
		header("location:index.php");
	}
}
?>