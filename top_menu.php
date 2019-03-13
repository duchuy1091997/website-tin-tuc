<?php 
require_once("./Entities/loaitin.class.php");
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
                    $loaiTin = LoaiTin::list_loai_tin();

                    if (is_array($loaiTin) || is_object($loaiTin)) {
                        foreach ($loaiTin as $item) {
                            echo "<li><a href='#'>" . $item["tenloaitin"] . "</a></li>";
                        }
                    }
                ?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav> 