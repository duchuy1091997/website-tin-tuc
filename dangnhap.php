<?php 
session_start();
require_once("./Entities/tintuc.class.php");
require_once("./Entities/theloai.class.php");
require_once("./Entities/user.class.php");
?>
<?php
include("header.php");
$theloai = TheLoai::list_the_loai();
if (isset($_POST["submit"])){
    //Lấy giá trị từ form collection
    $userEmail = $_POST["email"];
    $password = md5($_POST["password"]);
    $user = User::dangnhap($userEmail, $password);
    if ($user) {
        $_SESSION['user_name'] = $user->name;
        header("Location: index.php");
        if(isset($_SESSION['user_error'])){
            unset($_SESSION['user_error']);
        }
    }
    else{
        $_SESSION['user_error'] = "Đăng nhập thất bại!";
        header("Location: dangnhap.php");
    }
}
?>
<nav class="navbar navbar-inverse top-menu">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/websitetintuc">Trang chủ</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <?php 
                foreach ($theloai as $item) {
                    echo "<li><a href=/websitetintuc/the_loai.php?idtheloai=" . $item["id"] . ">" . $item["Ten"] . "</a></li>";
                }
                ?>
            </ul>
            <ul class="nav navbar-nav pull-right">
                    <?php
                    if(isset($_SESSION['user_name'])){
                    ?>
                        <li>
                        	<a>
                        		<span class ="glyphicon glyphicon-user"></span>
                        		<? echo $_SESSION['user_name'];?>
                        	</a>
                        </li>
                        
                        <li>
                        	<a href="dang-xuat">Đăng xuất</a>
                        </li>
                    <?php
                    }
                    else{
                    ?>

                        <li>
                            <a href="dangky.php">Đăng ký</a>
                        </li>
                        <li>
                            <a href="dangnhap.php">Đăng nhập</a>
                        </li>
                    <?php
                    }
                    ?>
                </ul>
        </div>
    </div>
</nav>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3> Đăng nhập </h3>
            </div>
            <div class="panel-body">
                <form method="POST" action="dangnhap.php">
                    <div>
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1">
                    </div>
                    <br>
                    <div>
                        <label>Nhập mật khẩu</label>
                        <input type="password" class="form-control" name="password" aria-describedby="basic-addon1">
                    </div>
                    <br>
                    <button type="submit" name="submit" class="btn btn-success">Đăng nhập</button>

                </form>
            </div>
        </div>
    </div>
</div> 