<?php 
class HomeController extends Controller{
	// ham tao la ham dc tu goi dau tien khi khoi tao class
	public function __construct(){
		// kiem tra xem user da dang nhap chua
		$this->authentication();//ham nay trong file Controller.php
	}
	public function index(){
		$this->loadView("HomeView.php");
	}
}
?>