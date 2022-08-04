<?php 
  //load file layout vao day
$this->fileLayout = "LayoutTrangChu.php";
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
<!-- thuc hien ajax de then sp vao gio hang -->
<script type="text/javascript">
	function ajaxAddToCart(id){
		$.get("index.php?controller=cart&action=ajaxCreate&id="+id,function(data){
			alert("Đã thêm sản phẩm vào giỏ hàng");
      // cap nhat so luong san pham
      $(".mini-cart-count").text(data);
  });
	}
</script>
<section class="shop-blog section">
	<div class="row">
		<div class="col-12">
			<div class="title">
				<h2>Sản phẩm nổi bật</h2>
			</div>
		</div>
	</div>
	<?php 
     	//tu view co the goi truc tiep cac ham trong Controller hoac cac ham trong Model
	$hotProduct = $this->modelHotProduct();
	?>
	<div class="list-product">
		<?php foreach($hotProduct as $rows): ?>
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
</section>
<?php 
$categories = $this->modelCategories();
?>
<?php foreach($categories as $itemCategories): ?>
	<section class="shop-blog section">
		<div class="row">
			<div class="col-12">
				<div class="title">
					<h2><?php echo $itemCategories->name; ?></h2>
				</div>
			</div>
		</div>
		<?php 
		$products = $this->modelProducts($itemCategories->id);
		?> 
		<div class="list-product">
			<?php foreach($products as $rows): ?>
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
						<p class="price-box"> 
							<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><img src="assets/frontend/images/star.jpg"></a> 
							<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><img src="assets/frontend/images/star.jpg"></a> 
							<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><img src="assets/frontend/images/star.jpg"></a> 
							<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><img src="assets/frontend/images/star.jpg"></a> 
							<a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><img src="assets/frontend/images/star.jpg"></a> 
						</p>
					</div>
					<div class="button-cart">
						<a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>">
							<button type="submit" class="add-to-cart">
								<p>Add to cart</p>
							</button>
						</a>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</section>
<?php endforeach; ?>
<section class="shop-blog">
	<div class="row">
		<div class="col-12">
			<div class="title">
				<h2>Tin tức</h2>
			</div>
		</div>
	</div>
	<?php 
	$news = $this->modelHotNews();
	?>  
	<div class="list-product">
		<?php foreach($news as $rows): ?>
			<div class="item">
				<div class="product-image">
					<img src="assets/upload/news/<?php echo $rows->photo; ?>" width="100%">
				</div>
				<div class="product-name">
					<a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>">
						<?php echo $rows->name; ?>
					</a>
				</div>
				<div class="des" style="text-align: left; margin-top: 10px;text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">
					<?php echo $rows->description; ?>
				</div>
				<div class="continue-reading">
					<a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>">
						<p>Continue Reading</p>
					</a>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
</section>