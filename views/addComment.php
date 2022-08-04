
<?php

//add_comment.php

$connect = new PDO('mysql:host=localhost;dbname=php58-project', 'root', '');

$error = '';

$comment_content = $_POST["comment_content"];
$productID = $_POST["productID"];
$customerID = $_POST["customerID"];

if($error == '')
{
 $query = "INSERT INTO comments(productID,customerID,content) VALUES($productID,$customerID,'$comment_content')";
 $statement = $connect->prepare($query);
 $statement->execute();
 $error = '<label class="text-success">Comment Added</label>';
}

$data = array(
 'error'  => $error
);

echo json_encode($data);

?>

