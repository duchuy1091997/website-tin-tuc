<?php 
require_once("./Entities/tintuc.class.php");
require_once("./Entities/theloai.class.php");
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
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3>Tin tức</h3>
        </div>
        <div class="panel-body">
            <?php 
                foreach ($lstTinTuc as $item) {?>
                <div class="row-item row">
                    <div class="col-md-12">
                        <h3><a href=<?php echo "./the_loai.php?idtheloai=".$item["idTheLoai"]. ">"; ?> <?php echo $item["Ten"];?></a> </h3> 
                        <div class="col-md-4">
                            <a href="/websitetintuc/chi_tiet_tin.php?idTinTuc=<?php echo $item["id"]; ?>">
                                <img class="img-responsive" src=<?php echo "./public/img/".$item["Hinh"]; ?> alt="hinhminhhoa">
                            </a>
                        </div>
                        <div class="col-md-8">
                            <h3><?php echo $item["TieuDe"]; ?></h3>
                            <p><?php echo $item["TomTat"]; ?></p>
                            <a class="btn btn-danger" href="/websitetintuc/chi_tiet_tin.php?idTinTuc=<?php echo $item["id"]; ?>">Xem chi tiết</a>
                        </div>
                    </div>
                    <div class="break"></div>
                </div>
            <?php } ?>
        </div>
    </div>
</div> 