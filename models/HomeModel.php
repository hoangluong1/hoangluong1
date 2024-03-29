<?php 
trait HomeModel{
	// san pham noi bat
	public function modelHotProduct(){
		$conn = Connection::getInstance();
		$query = $conn->query("select * from products where hot = 1 order by id desc limit 0,3");
		// tra ve tat ca cac ban ghi truy van dc
		return $query->fetchAll();
	}
	// lay cac danh muc co chua cac san pham ben trong
	public function modelCategories(){
		$conn = Connection::getInstance();
		$query = $conn->query("select * from categories where id in (select category_id from products)");
		// tra ve tat ca cac ban ghi truy van dc
		return $query->fetchAll();
	}
	// lay 10 tin noi bat de hien thi o trang chu
	public function modelHotNews(){
		$conn = Connection::getInstance();
		$query = $conn->query("select * from news where hot = 1 order by id desc limit 0,3");
		// tra ve tat ca cac ban ghi truy van dc
		return $query->fetchAll();
	}
	// lay cac san pham thuoc danh muc
	public function modelProducts($category_id){
		$conn = Connection::getInstance();
		$query = $conn->query("select * from products where category_id = $category_id order by id desc limit 0,3");
		// tra ve tat ca cac ban ghi truy van dc
		return $query->fetchAll();
	}
}
?>