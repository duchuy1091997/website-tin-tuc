<?php 
require_once("./Entities/tintuc.class.php");
require_once("./Entities/theloai.class.php");
require_once("./Entities/user.class.php");
?>
<?php
include("header.php");
$theloai = TheLoai::list_the_loai();
//Đăng ký
if (isset($_POST["submit"])){
    //Lấy giá trị từ form collection
    $userName = $_POST["name"];
    $userEmail = $_POST["email"];
    $password = $_POST["password"];
    $repassword = $_POST["repassword"];

    $user = new User($userName, $userEmail, $password, $repassword);
    if ($password !=  $repassword) {
        $_SESSION['error'] = "Đăng ký thất bại!";
        header("Location: dangky.php");
    }
    else{
         //lưu csdl
        $result = $user->save();
        if ($result == 1) {
            $_SESSION['success'] = "Đăng ký thành công!";
            header("Location: index.php");
            if(isset($_SESSION['error'])){
                unset($_SESSION['error']);
            }
        } else {
            $_SESSION['error'] = "Đăng ký thất bại!";
            header("Location: dangky.php");
        }
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
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/websitetintuc/dangky.php"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
                <li><a href="/websitetintuc/dangnhap.php"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <?php 
            if (isset($_SESSION['error'])) {
                echo "<div class='alert alert-danger'>".$_SESSION['error']. "</div>";
            }
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3> Đăng ký </h3>
            </div>
            <div class="panel-body">
                <form method="POST" action="">
                    <div>
                        <label>Họ tên</label>
                        <input type="text" class="form-control" placeholder="Username" name="name" aria-describedby="basic-addon1" required="true">
                    </div>
                    <br>
                    <div>
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1" required="true">
                    </div>
                    <br>
                    <div>
                        <label>Nhập mật khẩu</label>
                        <input type="password" class="form-control" name="password" aria-describedby="basic-addon1" required="true">
                    </div>
                    <br>
                    <div>
                        <label>Nhập lại mật khẩu</label>
                        <input type="password" class="form-control" name="repassword" aria-describedby="basic-addon1" required="true">
                    </div>
                    <br>
                    <button type="submit" name="submit" class="btn btn-success">Đăng ký</button>

                </form>
            </div>
        </div>
    </div>
</div> 