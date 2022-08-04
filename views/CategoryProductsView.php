<?php
$this->fileLayout = "LayoutTrangTrong.php"; 
?>
<style type="text/css">
	.discount{
		position: absolute;
		width: 50px;
		line-height: 50px;
		text-align: center;
		background: linear-gradient(120deg,#2980b9, #8e44ad);color: white;
		border-radius: 50px;
	}
	.wishlist{position: absolute; width: 25px; line-height: 25px; text-align: center; background: linear-gradient(123deg, #ee9ca7,#ffdde1); color: white; border-radius: 20px; right: 15px; top: 15px;};
</style>
<!-- thuc hien ajax de them sp vao gio hang -->
<script type="text/javascript">
	function ajaxAddToCart(id){
		$.get("index.php?controller=cart&action=ajaxCreate&id="+id,function(data){
			alert("Đã thêm sản phẩm vào giỏ hàng");
      // cap nhat so luong san pham
      $(".mini-cart-count").text(data);
  });
	}
</script>
<div class="sidebar" style="margin-top: 100px; width: 300px;">
	<div class="sidebar-1">
		<div class="title-1">
			Tìm theo mức giá
		</div>
		<ul>
			<li>
				Giá từ:
				<input type="number" min="0" value="0" id="fromPrice" class="form-control" />
			</li>
			<li>
				Đến:
				<input type="number" min="0" value="0" id="toPrice" class="form-control" />
			</li>
			<li style="text-align: center;">
				<input style="background-color: #f0ad4e; border-radius: 4px;font-weight: 400;  padding: 8px 16px;font-size: 15px; border: 0;" type="button" class="btn btn-warning" value="Tìm mức giá" onclick="location.href = 'index.php?controller=search&action=price&fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;"/>
			</li>
		</ul>
	</div>
	<?php 
     //tu view co the goi truc tiep cac ham trong Controller hoac cac ham trong Model
	$hotProduct = $this->modelHotProduct();
	?>
	<?php foreach($hotProduct as $rows): ?>
		<div class="sidebar-2">
			<div class="title-1">
				Sản phẩm nổi bật
			</div>
			<div class="discount"><?php echo $rows->discount; ?>%</div>
			<div style="position: absolute; width: 25px; line-height: 25px; text-align: center; background: linear-gradient(123deg, #ee9ca7,#ffdde1); color: white; border-radius: 20px; left:200px; margin-top: 10px;"><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" style="color:white"><span class="fa fa-heart"></span></a></div>
			<div class="product-image" style="margin-top: 15px;">
				<img src="assets/upload/products/<?php echo $rows->photo; ?>" width="100%">
			</div>
			<div class="product-name" style="text-align: center;">
				<a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><b><?php echo $rows->name; ?></b></a>
			</div>
			<div class="price" style="text-align: center;">
				<p style="text-decoration-line: line-through;">
					<?php echo number_format($rows->price); ?> đ	
				</p>
				<p>
					<?php 
					echo number_format($rows->price - ($rows->price * $rows->discount)/100); 
					?> đ
				</p>
				<p class="price-box"> 
					<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><img src="assets/frontend/images/star.jpg"></a> 
					<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><img src="assets/frontend/images/star.jpg"></a> 
					<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><img src="assets/frontend/images/star.jpg"></a> 
					<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><img src="assets/frontend/images/star.jpg"></a> 
					<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><img src="assets/frontend/images/star.jpg"></a> 
				</p>
			</div>
			<div class="button-cart">
				<a href="" onclick="ajaxAddToCart(<?php echo $rows->id ?>)">
					<button type="submit" class="add-to-cart">
						<p>Add to cart</p>
					</button>
				</a>
			</div>
		</div>
	<?php endforeach; ?>
</div>
<section style="margin-top: 80px; width: 100%;">
	<div class="title"></div>
	<fieldset style="width: 850px; margin: auto; border: 0;">
		<form method="post" action="">
			<div class="menu-product-right" style="float: right;">
				<?php 
				$order = isset($_GET["order"]) ? $_GET["order"] : "";
				?>
				<p>Sắp xếp theo</p>
				<select class="float-right" onchange="location.href = 'index.php?controller=products&action=category&id=<?php echo $id ?>&order='+this.value">
					<option value="0"></option>
					<option <?php if($order == "priceAsc"): ?> selected <?php endif; ?> value="priceAsc">Giá tăng dần</option>
					<option <?php if($order == "priceDesc"): ?> selected <?php endif; ?> value="priceDesc">Giá giảm dần</option>
					<option <?php if($order == "nameAsc"): ?> selected <?php endif; ?> value="nameAsc">Sắp xếp A-Z</option>
					<option <?php if($order == "nameDesc"): ?> selected <?php endif; ?> value="nameDesc">Sắp xếp Z-A</option>
				</select>
				<!-- <div class="font">
					<a href="#"><i class="fas fa-th-large"></i></a>
				</div>
				<div class="font1">
					<a href=""><i class="fas fa-list"></i></a>
				</div> -->
			</div>
		</form>
	</fieldset>
	<div class="list-product">
		<?php foreach($data as $rows): ?>
			<div class="item">
				<div class="discount"><?php echo $rows->discount; ?>%</div>
				<div class="wishlist"><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" style="color:white"><span class="fa fa-heart"></span></a></div>
				<div class="product-image">
					<img src="assets/upload/products/<?php echo $rows->photo; ?>" width="100%">
				</div>
				<div class="product-name">
					<a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a>
				</div>
				<div class="price">
					<p style="text-decoration-line: line-through;">
						<?php echo number_format($rows->price); ?> đ
					</p>
					<p>
						<?php 
						echo number_format($rows->price - ($rows->price * $rows->discount)/100); 
						?> đ
					</p>
				</div>
				<div class="button-carts">
					<a href="" onclick="ajaxAddToCart(<?php echo $rows->id ?>);">
						<button type="submit" class="add-to-cart">
							<p>Add to cart</p>
						</button>
					</a>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
	<div class="pagination">
		<div class="pagination-a">
			<a href="#">Trang</a>
			<?php for($i = 1; $i <= $numPage; $i++): ?>
				<a href="index.php?controller=products&action=category&id=<?php echo $id; ?>&p=<?php echo $i; ?>">
					<?php echo $i; ?>
				</a>
			<?php endfor; ?>
		</div>
	</div>
</section>