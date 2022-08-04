 <?php 
    //load file Layout.php vao day
$this->fileLayout = "Layout.php";
?>
 <!-- muốn upload dc file trong thẻ form phải có thuộc tính enctype="multipart/form-data"-->
            <form method="post" action="<?php echo $action; ?>" enctype="multipart/form-data">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên sản phẩm</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->name) ? $record->name : ""; ?>" name="name" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                 <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="checkbox" <?php if(isset($record->hot) && $record->hot == 1): ?> check <?php endif; ?> name="hot">
                        <label for="hot">&nbsp;&nbsp;Sản phẩm nổi bật</label>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giá</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->price) ? $record->price : ""; ?>" name="price" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">% Giảm Giá</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->discount) ? $record->discount : ""; ?>" name="discount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Danh mục</div>
                    <div class="col-md-10">
                        <select name="category_id" class="form-control" style="width:200px;">
                            <?php 
                            $categories = $this->modelCategories();
                            ?>
                            <?php foreach($categories as $rows): ?>
                                <option <?php if(isset($record->category_id) && $record->category_id == $rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                                <?php 
                                $categoriesSub = $this->modelCategoriesSub($rows->id);
                                ?>
                                <?php foreach($categoriesSub as $rowsSub): ?>
                                    <option <?php if(isset($record->category_id) && $record->category_id == $rowsSub->id): ?> selected <?php endif; ?> value="<?php echo $rowsSub->id; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $rowsSub->name; ?></option>
                                <?php endforeach; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giới thiệu</div>
                    <div class="col-md-10">
                        <textarea name="description"><?php echo isset($record->description) ? $record->description:""; ?></textarea>
                        <script type="text/javascript">
                            CKEDITOR.replace("description");
                        </script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Chi tiết</div>
                    <div class="col-md-10">
                        <textarea name="content"><?php echo isset($record->content) ? $record->content:""; ?></textarea>
                        <script type="text/javascript">
                            CKEDITOR.replace("content");
                        </script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Hình ảnh</div>
                    <div class="col-md-10">
                        <input type="file" name="photo">
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
            </form>