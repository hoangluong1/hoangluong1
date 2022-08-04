<?php 
    //load file Layout.php vao day
$this->fileLayout = "Layout.php";
?>
<form method="post" action="<?php echo $action; ?>">
    <!-- rows -->
    <div class="row" style="margin-top:5px;">
        <div class="col-md-2">Tên danh mục</div>
        <div class="col-md-10">
            <input type="text" value="<?php echo isset($record->name) ? $record->name : ""; ?>" name="name" class="form-control" required>
        </div>
    </div>
    <!-- end rows -->
    <!-- rows -->
    <div class="row" style="margin-top:5px;">
        <div class="col-md-2">Danh mục</div>
        <div class="col-md-10">
            <select name="parent_id">
                <option value="0"></option>
                <?php 
                $category_id = isset($record->id) ? $record->id : 0;
                $categories = $this->modelCategories($category_id);
                ?>
                <?php foreach($categories as $rows): ?>
                    <option <?php if(isset($record->parent_id)&&$record->parent_id==$rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                <?php endforeach; ?>
            </select>
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