<?php
// load file LayoutTrangtrong.php vao day
$this->fileLayout = "LayoutTrangTrong.php"; 
?>
<style type="text/css">
	.cmt-input{
		border: 1px solid #ccc;
		font-size: 20px;
		padding: 4px 6px;
		width: 883px;
	}
	.cmt-btn{
		padding: 3px 6px;
		border: none;
		outline: none;
		margin-left: 16px;
		background-color: #7fad39;
		color: #fff;
		border-radius: 6px;
		font-size: 17px;
	}
</style>
<!-- ------------------------------------------------------------------------ -->
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
<div class="content">
	<div style="display: flex;">
		<div class="product-images">
			<a href=""><img src="assets/upload/products/<?php echo $record->photo; ?>" width="100%"></a>
		</div>
		<div class="product-info">
			<div class="desc-seller">
				<h2><?php echo $record->name; ?></h2>
				<h5>Mã sp: <?php echo $record->id; ?></h5>
				<h4>
					Category Id: <?php echo $record->category_id; ?>
				</h4>
				<div class="price">
					<p style="text-decoration-line: line-through;">
						<?php echo number_format($record->price); ?>đ
					</p>
					<p>
						<?php echo number_format($record->price - $record->price * $record->discount/100); ?>đ
					</p>
					<br>

					<div class="mota">
						<p>
							<b>Description: </b>
							<?php echo $record->description; ?>
						</p>
						<b>
							<?php echo $record->content; ?>
						</b>
					</div>
					<!-- rating -->
					<div style="border:1px solid #dddddd; margin-top: 15px;">
						<h4 style="padding-left: 10px;">Rating</h4>
						<table style="width: 100%;">
							<tr>
								<td style="width: 80%; padding-left: 10px;"><img src="assets/frontend/images/star.jpg"></td>
								<td><span class="label label-primary"><?php echo $this->modelGetStar($record->id,1); ?></span></td>
							</tr>
							<tr>
								<td style="width: 80%; padding-left: 10px;"><img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"></td>
								<td><span class="label label-warning"><?php echo $this->modelGetStar($record->id,2); ?></span></td>
							</tr>
							<tr>
								<td style="width: 80%; padding-left: 10px;"><img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"></td>
								<td><span class="label label-danger"><?php echo $this->modelGetStar($record->id,3); ?></span></td>
							</tr>
							<tr>
								<td style="width: 80%; padding-left: 10px;"><img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"></td>
								<td><span class="label label-info"><?php echo $this->modelGetStar($record->id,4); ?></span></td>
							</tr>
							<tr>
								<td style="width: 80%; padding-left: 10px;"><img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"> <img src="assets/frontend/images/star.jpg"></td>
								<td><span class="label label-success"><?php echo $this->modelGetStar($record->id,5); ?></span></td>
							</tr>
						</table>
						<br>
					</div>
					<!-- /rating -->
					<div class="button-cart">
						<a href="" onclick="ajaxAddToCart(<?php echo $record->id ?>)">
							<button type="submit" class="add-to-cart">
								<p><i class="fas fa-shopping-cart"></i> Add to cart</p>
							</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section>
		<?php if(isset($_SESSION['customer_id'])):?>
			<form method="POST" id="comment_form" style="margin-left: 20px;">
				<input name="comment_content" class="cmt-input" type="text" placeholder="Comment..." required>
				<input name="productID" class="cmt-input" type="hidden" value="<?= $record->id; ?>">
				<input name="customerID" class="cmt-input" type="hidden" value="<?= $_SESSION['customer_id'] ?>">
				<input type="submit" name="submit" class="cmt-btn" id="submit" value="button" />
			</form>
			<?php else: ?>
				<h2>Vui lòng đăng nhập để bình luận</h2>
				<div id="display_comment" style="margin-bottom: 30px;"></div>
			<?php endif; ?>
			<div id="display_comment" style="margin-bottom: 30px;"></div>

			<script type="text/javascript">
				$(document).ready(function(){
					$('#comment_form').on('submit', function(event){
						event.preventDefault();
						var form_data = $(this).serialize();
						$.ajax({
							url:"views/addComment.php",
							method:"POST",
							data:form_data,
							dataType:"JSON",
							success:function(data) {
								if(data.error != '') {
									$('#comment_form')[0].reset();
									load_comment();
								}
							}
						})
					});
					
					load_comment();

					function load_comment() {
						$.ajax({
							url:"views/fetchComment.php?id=<?= $record->id; ?>",
							method:"POST",
							success:function(data) {
								$('#display_comment').html(data);
							}
						})
					}

				});
			</script>
		</section>
	</div>