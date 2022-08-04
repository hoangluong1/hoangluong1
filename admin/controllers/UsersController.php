<?php 
include "models/UsersModel.php";

class UsersController extends Controller{
	use UsersModel;

	public function index(){
		// quy dinh so ban ghi tren 1 trang
		$recordPerPage = 4;
		// tinh so trang
		$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
		// lay du lieu tu model
		$data = $this->modelRead($recordPerPage);
		// goi view, truyen du lieu ra view
		$this->loadView("UsersView.php",["data"=>$data,"numPage"=>$numPage]);
	}
	//sua ban ghi
		public function update(){
			//lay id truyen tu url
			//is_numeric(key) tra ve true neu key la so, nguoc lai tra ve false
			//is_numeric($_GET["id"]) <=> is_numeric($_GET["id"]) == true
			//!is_numeric($_GET["id"]) <=> is_numeric($_GET["id"]) == false
			$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
			//tao bien $action de dua vao thuoc tinh $action cua the form
			$action = "index.php?controller=users&action=updatePost&id=$id";
			//lay mot ban ghi
			$record = $this->modelGetRecord($id);
			//goi view, truyen du lieu ra view
			$this->loadView("UsersFormView.php",["action"=>$action,"record"=>$record]);
		}
		//khi an nut submit (update ban ghi)
		public function updatePost(){			
			$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
			//goi ham modelUpdate de update ban ghi
			$this->modelUpdate($id);
			//quay tro lai trang users
			header("location:index.php?controller=users");
		}
		// create
		public function create(){
			$action = "index.php?controller=users&action=createPost";
			$this->loadView("UsersFormView.php",["action"=>$action]);
		}
		// create sau khi an submit
		public function createPost(){
			$this->modelCreate();
			// header("location:index.php?controller=users");
		}
		// xoa ban ghi
		public function delete(){
			$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
			$this->modelDelete($id);
			header("location:index.php?controller=users");
		}
}
?>