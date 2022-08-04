<?php 
//load file Layout.php vao day
$this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
     <h1 class="mt-4" style="text-align: center;">Categories</h1>
    <div style="margin-bottom:5px; float: right;">
        <a href="index.php?controller=categories&action=create" class="btn btn-primary">Thêm danh mục</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Tên danh mục</th>
                    <th style="width:100px;"></th>
                </tr>
                <?php foreach($data as $rows): ?>
                    <tr>
                        <td><?php echo $rows->name; ?></td>
                        <td style="text-align:center;">
                            <a href="index.php?controller=categories&action=update&id=<?php echo $rows->id ?>">Sửa</a>&nbsp;
                            <a href="index.php?controller=categories&action=delete&id=<?php echo $rows->id ?>" onclick="return window.confirm('Are you sure?');">Xóa</a>
                        </td>
                    </tr>
                    <?php 
                    $categoriesSub = $this->modelCategoriesSub($rows->id);
                    ?>
                    <?php foreach($categoriesSub as $rowsSub): ?>
                        <tr>
                            <td style="padding-left:20px;"><?php echo $rowsSub->name; ?></td>
                            <td style="text-align:center;">
                                <a href="index.php?controller=categories&action=update&id=<?php echo $rowsSub->id; ?>">Sửa</a>&nbsp;
                                <a href="index.php?controller=categories&action=delete&id=<?php echo $rowsSub->id; ?>" onclick="return window.confirm('Are you sure?');">Xóa</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
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
                        <a href="index.php?controller=categories&p=<?php echo $i; ?>" class="page-link"><?php echo$i; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>