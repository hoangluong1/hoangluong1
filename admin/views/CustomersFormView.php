<?php 
$this->fileLayout = "Layout.php";
?>
<?php if(isset($_GET["notify"]) && $_GET["notify"] =="email-exists"): ?>
	<div class="alert alert-warning">Email đã tồn tại</div>
<?php endif; ?>
<form method="post" action="<?php echo $action; ?>">
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2">Họ tên</div>
		<div class="col-md-10">
			<input type="text" value="<?php echo isset($record->name) ? $record->name : ""; ?>" name="name" class="form-control" required>
		</div>
	</div>
	<!-- end rows -->
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2">Email</div>
		<div class="col-md-10">
			<input type="email" value="<?php echo isset($record->email) ? $record->email : ""; ?>" <?php if(isset($record->email)): ?> disabled <?php else: ?> required <?php endif; ?> name="email" class="form-control" required>
		</div>
	</div>
	<!-- end rows -->
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2">Địa chỉ</div>
		<div class="col-md-10">
			<input type="text" value="<?php echo isset($record->address) ? $record->address : ""; ?>" name="address" class="form-control" required>
		</div>
	</div>
	<!-- end rows -->
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2">SĐT</div>
		<div class="col-md-10">
			<input type="number" value="<?php echo isset($record->phone) ? $record->phone : ""; ?>" name="phone" class="form-control" required>
		</div>
	</div>
	<!-- end rows -->
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2">Mật khẩu</div>
		<div class="col-md-10">
			<input type="password" name="password" <?php if(isset($record->email)): ?> placeholder="Không đổi password thì không nhập thông tin vào ô textbox này" <?php else: ?> required <?php endif; ?> class="form-control">
		</div>
	</div>
	<!-- end rows -->
	<!-- rows -->
	<div class="row" style="margin-top:5px;">
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<input type="submit" value="Lưu" class="btn btn-primary">
		</div>
	</div>
	<!-- end rows -->
</form>