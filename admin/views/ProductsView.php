<?php 
//load file Layout.php vao day
$this->fileLayout = "Layout.php";
?>
    <div class="col-md-12">
         <h1 class="mt-4" style="text-align: center;">Products</h1>
    <div style="margin-bottom:5px; float: right;">
        <a href="index.php?controller=products&action=create" class="btn btn-primary">Thêm sản phẩm</a>
    </div>
        <div class="panel panel-primary">
            <div class="panel-body">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th style="width: 100px;">Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th style="width: 200px;">Danh mục</th>
                        <th style="width:50px;">Hot</th>
                        <th style="width:100px;"></th>
                    </tr>
                    <?php foreach($data as $rows): ?>
                    <tr>
                        <td>
                            <?php if($rows->photo != "" && file_exists("../assets/upload/products/".$rows->photo)): ?>
                                <img src="../assets/upload/products/<?php echo $rows->photo; ?>" style="width: 100px;">
                            <?php endif; ?>
                        </td>
                        <td><?php echo $rows->name; ?></td>
                        <td></td>
                        <td style="text-align: center;">
                            <?php if(isset($rows->hot) && $rows->hot == 1): ?>
                                <span class="fa fa-check"></span>
                            <?php endif; ?>
                        </td>
                        <td style="text-align:center;">
                            <a href="index.php?controller=products&action=update&id=<?php echo $rows->id ?>">Sửa</a>&nbsp;
                            <a href="index.php?controller=products&action=delete&id=<?php echo $rows->id ?>" onclick="return window.confirm('Are you sure?');">Xóa</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </table>
                <style type="text/css">
                    .pagination{padding:0px; margin:0px;}
                </style>
                <!-- tạo phân trang -->
                <ul class="pagination">
                    <li class="page-item">
                        <a href="#" class="page-link">Trang</a>
                    </li>
                    <?php for($i=1;$i<=$numPage;$i++): ?>
                        <li class="page-item">
                            <a href="index.php?controller=products&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                        </li>
                    <?php endfor; ?>
                </ul>
            </div>
        </div>
    </div>