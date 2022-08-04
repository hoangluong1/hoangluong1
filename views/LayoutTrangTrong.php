<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- <script src="https://kit.fontawesome.com/78ac9ff2a8.js" crossorigin="anonymous"></script> -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="assets/frontend/css/style.css">
</head>
<body>
	<!-- header -->
	<?php include "views/HeaderView.php"; ?>
	<!-- end header -->
	<!-- ------------------------------------------------------------------------ -->
	<div class="main">
		<!-- main -->
		<div style="display: flex;">
          <?php echo $this->view; ?>
        </div>
        <!-- end main --> 
	</div>

	<!-- ------------------------------------------------------------------------ -->
	<?php include "views/FooterView.php"; ?>
</body>
<script type="text/javascript" src="assets/frontend/js/jquery.min.js"></script>
</html>