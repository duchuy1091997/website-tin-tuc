<?php 
require_once("./config/db.class.php");
require_once("./Entities/theloai.class.php");

class TinTuc
{
    public $idTinTuc;
    public $tieuDe;
    public $tieuDeKhongDau;
    public $tomTat;
    public $noiDung;
    public $hinh;
    public $soLuotXem;
    public $idTheLoai;
    public $noiBat;
    public $createAt;
    public $updateAt;

    public function __construct($tieuDe, $tieuDeKhongDau, $tomTat, $noiDung, $hinh, 
                                $soLuotXem, $idTheLoai, $noiBat, $createAt, $updateAt)
    {
        # code...
        $this->tieuDe = $tieuDe;
        $this->tieuDeKhongDau = $tieuDeKhongDau;
        $this->tomTat = $tomTat;
        $this->noiDung = $noiDung;
        $this->hinh = $hinh;
        $this->soLuotXem = $soLuotXem;
        $this->idTheLoai = $idTheLoai;
        $this->noiBat = $noiBat;
        $this->createAt = $createAt;
        $this->updateAt = $updateAt;
    }

    public static function list_tin_tuc()
    {
        $db = new Db();
        $sql = "SELECT * FROM tintuc";
        $result = $db->select_to_array($sql);
        return $result;
    }

    public static function list_tin_tuc_by_the_loai()
    {
        $db = new Db();
        $sql = "SELECT DISTINCT * FROM tintuc t, theloai tl WHERE t.idTheLoai = tl.id GROUP BY t.idTheLoai";
        $result = $db->select_to_array($sql);
        return $result;
    }
    //Lấy ds tin tức theo loại
    public static function list_tin_tuc_by_idtheloai($idtheloai, $vitri=-1, $limit=-1)
    {
        $db = new Db();
        $sql = "SELECT * FROM tintuc WHERE idTheLoai = '$idtheloai'";
        if ($vitri > -1 && $limit > 1) {
            $sql .= " LIMIT $vitri, $limit";
        }
        $result = $db->select_to_array($sql);
        return $result;
    }
    //lấy danh sách tin cùng thể loại
    public static function list_tin_tuc_relate($idtheloai, $id){
        $db = new Db();
        $sql = "SELECT * FROM tintuc WHERE idTheLoai='$idtheloai' AND id!='$id' LIMIT 0,3";
        $result = $db->select_to_array($sql);
        return $result;
    }
    //lấy danh sách tin nổi bật
    public static function list_tin_tuc_noi_bat($id){
        $db = new Db();
        $sql = "SELECT * FROM tintuc WHERE NoiBat=1 AND id!='$id' LIMIT 0,3";
        $result = $db->select_to_array($sql);
        return $result;
    }
    //Xem chi tiết tin
    public static function get_chi_tiet_tin($id){
        $db = new Db();
        $sql = "SELECT * FROM tintuc WHERE id='$id'";
        $result = $db->select_to_array($sql);
        return $result;
    }
    //tìm kiếm tin
    public static function search($keyword){
        $db = new Db();
        $sql = "SELECT * FROM tintuc WHERE TieuDe='$keyword'";
        $result = $db->select_to_array($sql);
        return $result;
    }
}
 