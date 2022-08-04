
<?php

//fetch_comment.php

$dsn = 'mysql:host=localhost;dbname=php58-project';
$username = 'root';
$password = '';

$db = new PDO($dsn, $username, $password);
$id = $_GET['id'];

$query = "SELECT cmt.*, us.* FROM comments as cmt, customers as us WHERE cmt.customerID = us.id AND cmt.productID = $id ORDER BY commentID DESC";

$statement = $db->prepare($query);

$statement->execute();

$result = $statement->fetchAll();
$output = '';
foreach($result as $row)
{
 $output .= '
 <div class="single-comment" style="margin-left: 20px; display: flex;">
            <div>
                <img style="margin-top: 15px;width: 40px; border-radius: 50%;border: 1px solid #000;" src="https://pdp.edu.vn/wp-content/uploads/2021/01/hinh-anh-cute-de-thuong.jpg" alt="">
            </div>
            <div style="margin-top: 10px;box-sizing: border-box; margin-left: 15px;">
                <b>
                    '.$row['name'].' 
                    <span style="font-size: 12px;color: #ccc;">'.$row['dateCreated'].'</span>
                </b>
                <p> '.$row['content'].'</p>
            </div>  
        </div>
 ';
}
echo $output;

?>
