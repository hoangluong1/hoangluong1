<?php 
trait CustomersModel{
	// lay ve danh sach cac ban ghi
	public function modelRead($recordPerPage){
		// lay bien page truyen tu url
		$page = isset($_GET["p"]) > 0 ? $_GET["p"]-1 : 0;
		// lay tu ban ghi nao
		$from = $page * $recordPerPage;

		$conn = Connection::getInstance();
		$query = $conn->query("select * from customers order by id desc limit $from, $recordPerPage");
		// tra ve nhieu ban ghi
		return $query->fetchAll();
	}
	// tinh tong so ban ghi
	public function modelTotalRecord(){
		$conn = Connection::getInstance();
		$query = $conn->query("select * from customers");
		// tra ve so luong ban ghi
		return $query->rowCount();
	}
	//lay mot ban ghi tuong ung voi id truyen vao
		public function modelGetRecord($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc hien truy van
			$query = $conn->prepare("select * from customers where id = :var_id");
			//thuc thi truy van, co truyen tham so vao cau lenh sql
			$query->execute(["var_id"=>$id]);
			//tra ve mot ban ghi
			return $query->fetch();
		}
		public function modelUpdate($id){
			$name = $_POST["name"];
			$address = $_POST["address"];
			$phone = $_POST["phone"];
			$password = $_POST["password"];
			//update name
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc hien truy van
			$query = $conn->prepare("update customers set name = :var_name, address = :var_address, phone = :var_phone where id = :var_id");
			//thuc thi truy van, co truyen tham so vao cau lenh sql
			$query->execute(["var_name"=>$name,"var_id"=>$id,"var_address"=>$address,"var_phone"=>$phone]);
			//neu password khong rong thi update password
			if($password != ""){
				//ma hoa password
				$password = md5($password);
				//thuc hien truy van
				$query = $conn->prepare("update customers set password = :var_password where id = :var_id");
				//thuc thi truy van, co truyen tham so vao cau lenh sql
				$query->execute(["var_password"=>$password,"var_id"=>$id]);
			}
		}

		public function modelCreate(){
			$name = $_POST["name"];
			$email = $_POST["email"];
			$address = $_POST["address"];
			$phone = $_POST["phone"];
			$password = $_POST["password"];
			$password = md5($password);

			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			// kiem tra xem email co trung voi email trong csdl khong
			$queryEmail = $conn->prepare("select email from customers where email=:var_email");
			$queryEmail->execute(["var_email"=>$email]);
			if($queryEmail->rowCount() == 0){
				$query = $conn->prepare("insert into customers set name=:var_name, email=:var_email, address = :var_address, phone = :var_phone, password=:var_password");
				// thuc thi truy van
				$query->execute(["var_name"=>$name,"var_email"=>$email,"var_address"=>$address,"var_phone"=>$phone,"var_password"=>$password]);
				header("location:index.php?controller=customers");
			}else{
				header("location:index.php?controller=customers&action=create&notify=email-exists");
			}
		}
		public function modelDelete($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc hien truy van
			$query = $conn->prepare("delete from customers where id=:var_id");
			//thuc thi truy van, co truyen tham so vao cau lenh sql
			$query->execute(["var_id"=>$id]);
		}
}
?>