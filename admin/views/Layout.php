<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- <meta name="description" content="" /> -->
    <meta name="author" content="" />
    <title>Static Navigation - SB Admin</title>
    <link href="../assets/admin/layout1/css/styles.css" rel="stylesheet" />
    <script src="../assets/admin/layout1/js/all.min.js"></script>
    <!-- load file ckeditor -->
    <script type="text/javascript" src="../assets/admin/ckeditor/ckeditor.js"></script>
</head>
<body>
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="index.html">Trang quản trị</a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown">
                <a href="index.php?controller=login&action=logout">logout</a>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="#">
                            Dashboard
                        </a>                 
                        <div class="sb-sidenav-menu-heading">Functions</div>
                        <a class="nav-link" href="index.php?controller=categories">
                            Categories
                        </a>
                        <a class="nav-link" href="index.php?controller=products">
                            Products
                        </a>
                        <a class="nav-link" href="index.php?controller=news">
                            News
                        </a>
                        <a class="nav-link" href="index.php?controller=orders">
                            Orders
                        </a>
                        <a class="nav-link" href="index.php?controller=users">
                            Users
                        </a>
                        <a class="nav-link" href="index.php?controller=customers">
                            Customers
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    Start Bootstrap
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">Function</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="table-responsive">
                            <?php echo $this->view; ?>
                        </div>
                    </div>                        
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
