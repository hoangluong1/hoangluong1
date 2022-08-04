<?php
$this->fileLayout = "LayoutTrangTrong.php"; 
?>
<div class="sidebar" style="margin-top: 100px;">
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
</div>
<section class="shop-blog section">
	<div class="title"><h3>Quần áo trẻ em</h3></div>
	<fieldset style="width: 850px; margin: auto; border: none;">
	<div class="menu-product-right" style="float:right;">
			<h3>Từ khóa tìm kiếm: <?php echo $key; ?></h3>
		</div>	
	</fieldset>
	<div class="list-product">
		<?php foreach($data as $rows): ?>
			<div class="item">
				<div class="product-image">
					<img src="assets/upload/products/<?php echo $rows->photo; ?>" width="100%">
				</div>
				<div class="product-name">
					<a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a>
				</div>
				<div class="price">
					<p style="text-decoration-line: line-through;"><?php echo number_format($rows->price); ?> đ</p>
					<p>
						<?php 
						echo number_format($rows->price - ($rows->price * $rows->discount)/100); 
						?> đ
					</p>
				</div>
				<div class="button-carts">
					<a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>">
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
				<a href="index.php?controller=search&action=name&key=<?php echo $key; ?>&p=<?php echo $i; ?>">
					<?php echo $i; ?>
				</a>
			<?php endfor; ?>
		</div>
	</div>
</section>