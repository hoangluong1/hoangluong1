<!-- thuc hien ajax de them sp vao gio hang -->
<script type="text/javascript">
	function ajaxDeleteCart(id){
		$.get("index.php?controller=cart&action=ajaxDelete&id="+id,function(data){
			alert("Đã xóa khỏi giỏ hàng");
      // cap nhat so luong san pham
      $(".mini-cart-count").text(data);
  });
	}
</script>
<header>
	<div class="logo">
		<img src="assets/frontend/images/logo.jpg" >
	</div>
	<div class="menu">
		<li><a href="index.php">Trang chủ</a></li>
		<li><a href="">Sản phẩm</a>
			<ul class="sub-menu">
				<?php 
				$conn = Connection::getInstance();
				$query = $conn->query("select * from categories where parent_id = 0 order by id desc");
				$categories = $query->fetchAll();
				?>
				<?php foreach($categories as $rows): ?>
					<li><a href="index.php?controller=products&action=category&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></li>

					<?php 
					$querySub = $conn->query("select * from categories where parent_id = {$rows->id} order by id desc");
					$categoriesSub = $querySub->fetchAll();
					?>
					<?php foreach($categoriesSub as $rowsSub): ?>
						<li style="padding-left:20px;"><a href="index.php?controller=products&action=category&id=<?php echo $rowsSub->id; ?>"><?php echo $rowsSub->name; ?></a></li>
					<?php endforeach; ?> 
				<?php endforeach; ?>  
			</ul>
		</li>
		<li>
			<a href="index.php?controller=cart">Giỏ hàng</a>
		</li>
		<li><a href="index.php?controller=news">Tin tức</a></li>
		<li><a href="index.php?controller=contact">Liên hệ</a></li>
		<li><a href="index.php?controller=wishlist">Wish List</a></li>
		<li>
			<div class="li-search" style="position: relative;">
				<input placeholder="tìm kiếm" type="text" onkeypress="searchForm(event);" id="key" class="input-control" style="width: 250px;">
				<button type="submit" style="border: none; background: transparent;" onclick="return search();"><i class="fas fa-search"></i></button>
				<div class="smart-search">
					<ul>
					</ul>
				</div>
				<!-- set thuoc tinh css cho smart-search -->
				<style type="text/css">
					.li-search{
						display: flex;
					}
					.smart-search{position: absolute; width: 100%; background: white; height: 350px; overflow: scroll; z-index: 1; display: none; margin-top: 15px;}
					.smart-search ul{padding: 0px; margin: 0px; list-style: none;}
					.smart-search ul li{border-bottom: 1p solid #dddddd; display: flex;}
					.smart-search img{width: 70px; margin-right: 5px;}
				</style>
			</div>
		</li>
	</div>
	<script type="text/javascript">
		function search(){
        // lay gia tri cua id
        var key = document.getElementById("key").value;
        // di chuyen den url tim kiem
        location.href = "index.php?controller=search&action=name&key="+key;
    }
      // khi an Enter trong o textbox thi cung thuc hien tim kiem
      function searchForm(event){
        // phim enter co keycode =13
        if(event.keyCode == 13){
          // lay gia tri cua id=key
          var key = document.getElementById("key").value;
          // di chuyen den url tim kiem
          location.href = "index.php?controller=search&action=name&key="+key;
      }
      //-----------------
      $(".input-control").keyup(function(){
      	var strKey = $("#key").val();
      	if(strKey.trim() == "")
      		$(".smart-search").attr("style","display:none");
      	else{
      		$(".smart-search").attr("style","display:block");
                //---
                //su dung ajax de lay du lieu
                $.get("index.php?controller=search&action=ajaxSearch&key="+strKey,function(data){
                    //clear cac the li ben trong the ul
                    $(".smart-search ul").empty();
                    //them su lieu vua lay duoc bang ajax vao the ul
                    $(".smart-search ul").append(data);
                });
                //---
            }
        });
         //-----------------
     }
 </script>
 <div class="others">
 	<?php if(isset($_SESSION['customer_email'])): ?>
 		<li>
 			<a href="">Xin chào <?php echo $_SESSION['customer_email'] ?></a>
 		</li>
 		<li>
 			<a href="index.php?controller=account&action=logout">Đăng xuất</a>
 		</li>
 		<?php else: ?>
 			<li>
 				<a href="index.php?controller=account&action=login">Đăng nhập</a>
 			</li>
 			<li><a href="index.php?controller=account&action=register">Đăng ký</a></li> 
 		<?php endif; ?>
 		<?php 
 		$numberProduct = 0;
 		$numberProduct = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
 		?>
 		<li class="cart_link">
 			<a class="fa fa-shopping-bag" href="index.php?controller=cart">
 				<?php echo $numberProduct; ?>
 			</a>
 			<?php if($numberProduct > 0): ?>
 				<div class="mini_cart">
 					<?php if(isset($_SESSION['cart'])): ?>
 						<?php foreach($_SESSION['cart'] as $product): ?>
 							<div class="cart_item bottom">
 								<div class="cart_img">
 									<a href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>"><img width=100px; alt="<?php echo $product['name']; ?>" src="assets/upload/products/<?php echo $product['photo']; ?>"></a>
 								</div>
 								<div class="cart_info">
 									<a id="product-name" href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>">
 										<?php echo $product['name']; ?>
 									</a>
 									<span>
 										<?php echo $product['number']; ?> x <?php echo number_format(($product["price"] - ($product["price"] * $product["discount"])/100) * $product["number"]); ?>₫
 									</span>
 								</div>
 								<div><a href="" onclick="ajaxDeleteCart(<?php echo $product['id'] ?>)"><i class="fa fa-trash"></i></a></div>
 							</div>
 						<?php endforeach; ?>
 					<?php endif; ?>
 				</div>
 			<?php endif; ?>
 		</li>
 	</div>
 </header>
 <script type="text/javascript" src="assets/frontend/js/jquery.min.js"></script>