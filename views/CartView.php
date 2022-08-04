<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://kit.fontawesome.com/78ac9ff2a8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/frontend/css/style.css">
</head>
<body>
    <?php include "views/HeaderView.php"; ?>
    <div class="row" style="margin-top: 60px;">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
            <!---------------------------- shopping cart table ---------------------------->
            <form action="index.php?controller=cart&action=update" method="post">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="p-2 px-3 text-uppercase">Ảnh sản phẩm</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="p-2 px-3 text-uppercase">Tên sản phẩm</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Giá</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Số lượng mua</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Thành tiền</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Xóa</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($_SESSION['cart'] as $product): ?>
                                <tr>
                                    <th scope="row">
                                        <div class="p-2">
                                            <img src="assets/upload/products/<?php echo $product['photo']; ?>" width="100px">
                                        </div>
                                    </th>
                                    <td class="align-middle"><a href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>"><strong><?php echo $product['name']; ?></strong></a></td>
                                    <td class="align-middle"><strong><?php echo number_format($product["price"] - ($product["price"] * $product["discount"])/100) ?>₫</strong></td>
                                    <td class="align-middle">
                                        <input type="number" id="qty" min="1" class="input-control" value="<?php echo $product['number']; ?>" name="product_<?php echo $product['id']; ?>" required="Không thể để trống">
                                    </td>
                                    <td class="align-middle"><strong>
                                        <?php 
                                        echo number_format(($product["price"] - ($product["price"] * $product["discount"])/100) * $product["number"]); ?>₫</strong>
                                    </td>
                                    <td class="align-middle">
                                        <a href="index.php?controller=cart&action=delete&id=<?php echo $product["id"] ?>" class="text-dark">
                                            <button type="button" class="btn btn-danger">Xóa</button>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            <?php if($this->cartNumber() > 0): ?>
                                <tr>
                                    <th scope="row">Tổng thanh toán</th>
                                    <th scope="row"></th>
                                    <th scope="row"></th>
                                    <th scope="row"></th>
                                    <th scope="row">
                                        <h5 class="font-weight-bold">
                                            <?php echo number_format($this->cartTotal()); ?>₫
                                        </h5>
                                    </th>
                                    <th scope="row"></th>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        <a href="index.php?controller=cart&action=destroy" class="btn btn-danger">
                                            xóa toàn bộ
                                        </a>
                                    </th>
                                    <th scope="row"></th>
                                    <th scope="row"></th>
                                    <th scope="row"></th>
                                    <th scope="row"><input type="submit" class="btn btn-success" value="Cập nhật"></th>
                                    <th scope="row">
                                        <a href="index.php?controller=cart&action=checkout" class="btn btn-dark rounded-pill py-2 btn-block">Thanh toán</a>
                                    </th>
                                </tr>
                            <?php endif; ?>
                            <tr>
                                <th scope="row"></th>
                                <th scope="row"></th>
                                <th scope="row"></th>
                                <th scope="row"></th>
                                <th scope="row"></th>
                                <th scope="row"></th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <!------------------------------------ End ---------------------------------------->
        </div>
    </div>
 <!--     <div class="row bg-white rounded shadow-sm">
        <div class="col-lg-6">
            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
            <div class="p-4">
                <div class="input-group mb-4 border rounded-pill p-2">
                    <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                    <div class="input-group-append border-0">
                        <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                    </div>
                </div>
            </div>
        </div>            <div class="col-lg-6">
                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                <div class="p-4">
                    <ul class="list-unstyled mb-4">
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                            <h5 class="font-weight-bold">
                                <?php echo number_format($this->cartTotal()); ?>₫
                            </h5>
                        </li>
                    </ul><a href="index.php?controller=cart&action=checkout" class="btn btn-dark rounded-pill py-2 btn-block">Thanh toán</a>
                </div>
            </div>
        </div> -->
        <footer>
            <div class="top_ft">
                <div class="container">
                    <div class="fixf mb40">
                        <div class="row">
                            <div  class="span6 span-t12 span-m12 plr10 mb20">
                                <div class="span6 span-m12 plr10 mb20">
                                    <div style="font-size: 15px; font-weight: bold;" class="rounded-pill text-uppercase py-2">Giới thiệu công ty</div>
                                    <div class="info">
                                        <p>dim group là tổ hợp chuỗi của hàng thực phẩm sạch số 1 tại Việt Nam với hơn 100 cửa hàng lớn nhỏ trên toàn quốc...</p>
                                        <p><strong><i class="fa fa-map-marker" aria-hidden="true"></i>Địa chỉ:</strong>Từ Sơn, Bắc Ninh.</p>
                                        <p><strong><i class="fa fa-phone" aria-hidden="true"></i>Điện thoại:</strong> 098 851 155-<strong>hotline:</strong>0988851155</p>
                                        <p><strong><i class="fa fa-envelope" aria-hidden="true"></i>Email:</strong> support@gmail.com</p>
                                        <p><strong><i class="fa fa-globe" aria-hidden="true"></i>website:</strong>demo.vn</p>
                                    </div>
                                </div>
                                <div class="span6 span-m12 plr10 mb20">
                                    <div style="font-size: 15px; font-weight: bold;" class="rounded-pill text-uppercase py-2">Thông tin khách hàng</div>
                                    <ul class="list_link">
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li> 
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div  class="span6 span-t12 span-m12 plr10 mb20">
                                <div class="span6 span-m12 plr10 mb20">
                                    <div style="font-size: 15px; font-weight: bold;" class="rounded-pill text-uppercase py-2">Dịch vụ hỗ trợ</div>
                                    <ul class="list_link">
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li> 
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li>
                                    </ul>
                                </div>
                                <div class="span6 span-m12 plr10 mb20">
                                    <div style="font-size: 15px; font-weight: bold;" class="rounded-pill text-uppercase py-2">Chính sách ưu đãi</div>
                                    <ul class="list_link">
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li> 
                                        <li><a href="">Giới thiệu</a></li>
                                        <li><a href="">Thông tin thanh toán</a></li>
                                        <li><a href="">liên hệ</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bot_ft">
                <div class="container">
                    <p>© Copyright Karsgroup</p>
                    <p style="float:right">Design by <a href="" target="_blank" style="color:#fff">KARS Group</a></p>
                </div>
            </div>
        </footer>
    </body>
    </html>