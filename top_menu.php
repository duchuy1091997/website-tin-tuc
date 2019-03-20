<?php 
require_once("./Entities/theloai.class.php");
require_once("./Entities/tintuc.class.php");
?>
<?php 
if (!isset($_GET["idtheloai"])) {
    $lstTinTuc = TinTuc::list_tin_tuc_by_the_loai();
} else {
    $idtheloai = $_GET["idtheloai"];
    $lstTinTuc = TinTuc::list_tin_tuc_by_idtheloai($idtheloai);
}
$theloai = TheLoai::list_the_loai();
?>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Trang chủ</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <?php 
                $theLoai = TheLoai::list_the_loai();
                    foreach ($theLoai as $item) {
                        echo "<li><a href=./trang_chinh.php?idtheloai=" . $item["id"] . ">" . $item["Ten"] . "</a></li>";
                    }
                ?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav> 