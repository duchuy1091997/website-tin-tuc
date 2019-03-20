<?php 
require_once("./Entities/tintuc.class.php");
?>
<?php 
include_once("header.php");
if (!isset($_GET["idTinTuc"])) {
    header('Location: not_found.php');
} else {
    $idTinTuc = $_GET["idTinTuc"];
    $chitiettin = reset(TinTuc::get_chi_tiet_tin($idTinTuc));
    $tinlienquan = TinTuc::list_tin_tuc_relate($chitiettin["idTheLoai"], $idTinTuc);
}
$theloai = TheLoai::list_the_loai();
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
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="row">
    <div class="col-md-3">
        <div class="panel panel-danger">
            <div class="panel-heading"><h3>Tin liên quan</h3></div>
            <div class="panel-body">
                <?php 
                    foreach ($tinlienquan as $item) {?>
                    <div class="row">
                        <div class="col-md-5">
                            <a href="/websitetintuc/chi_tiet_tin.php?idTinTuc=<?php echo $item["id"]; ?>"> 
                                <img class="img-responsive" src=<?php echo "./public/img/".$item["Hinh"];?> alt="anhminhhoa">
                            </a>
                        </div>
                        <div class="col-md-7">
                            <a href="/websitetintuc/chi_tiet_tin.php?idTinTuc=<?php echo $item["id"]; ?>"> 
                                <p><?php echo $item["TieuDe"]; ?></p>
                            </a>
                        </div>
                        <div class="break"></div>
                    </div>
                    <?php } ?>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <h1><?php echo $chitiettin["TieuDe"] ?></h1>
        <p><?php echo $chitiettin["TomTat"] ?></p>
        <img class="img-responsive" src=<?php echo "./public/img/" . $chitiettin["Hinh"]; ?> width="300px" alt="hinhminhhoa">
        <?php echo $chitiettin["NoiDung"] ?>
        <div class="break"></div>
        <i>Ngày cập nhật: <?php echo $chitiettin["updated_at"] ?></i>
    </div>
</div> 
<?php include_once("footer.php") ?>