<?php 
trait LoginModel{
	public function modellogin(){
		$email = $_POST["email"];
		$password = $_POST["password"];
		// ma hoa password
		$password = md5($password);
		// lay bien ket noi csdl
		$conn = Connection::getInstance();
		// chuan bi truy van
		$query = $conn->prepare("select email from users where email=:var_email and password=:var_password");
		$query->execute(["var_email"=>$email,"var_password"=>$password]);
		if($query->rowCount() > 0){
			// login thanh cong
			$_SESSION['email'] = $email;
			header("location:index.php");
		}else{
			header("location:index.php?controller=login");
		}
	}
}
?>