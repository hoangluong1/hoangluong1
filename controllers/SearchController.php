<?php 
include "models/SearchModel.php";

class SearchController extends Controller{
	use SearchModel;
	public function name(){
		$key = isset($_GET["key"]) ? $_GET["key"] : "";
		// quy dinh so ban ghi tren 1 trang
		$recordPerPage = 5;
		// tinh so trang
		$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
		// lay du lieu tu model
		$data = $this->modelRead($recordPerPage);
		$this->loadView("SearchNameView.php",["data"=>$data,"numPage"=>$numPage,"key"=>$key]);
	}
	public function price(){
		$fromPrice = isset($_GET["fromPrice"]) ? $_GET["fromPrice"] : "";
		$toPrice = isset($_GET["toPrice"]) ? $_GET["toPrice"] : "";
		// quy dinh so ban ghi tren 1 trang
		$recordPerPage = 6;
		// tinh so trang
		$numPage = ceil($this->modelTotalRecordSearchPrice()/$recordPerPage);
		// lay du lieu tu model
		$data = $this->modelReadSearchPrice($recordPerPage);
		$this->loadView("SearchPriceView.php",["data"=>$data,"numPage"=>$numPage,"fromPrice"=>$fromPrice,"toPrice"=>$toPrice]);
	}
	// search ajax controller
	public function ajaxSearch(){
		// echo "<h1>Controller = SearchController, action = ajaxSearch </h1>";
		$data = $this->modelAjaxSearch();
		$strResult = "";
		foreach($data as $rows){
			$strResult = $strResult."<li><img src='assets/upload/products/{$rows->photo}'><a href='index.php?controller=products&action=detail&id={$rows->id}'>{$rows->name}</a></li>";
		}
		echo $strResult;
	}
}
?>