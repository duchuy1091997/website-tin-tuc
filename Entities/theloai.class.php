<?php 
    require_once("./config/db.class.php");

    class TheLoai{
        public $idTheLoai;
        public $tenTheLoai;
        public $tenKhongDau;

        public function __construct($tenTheLoai, $tenKhongDau)
        {
            # code...
            $this->tenTheLoai = $tenTheLoai;
            $this->tenKhongDau = $tenKhongDau;
        }

        public static function list_the_loai(){
            $db = new Db();
            $sql = "SELECT * FROM theloai";
            $result = $db->select_to_array($sql);
            return $result;
        }

        public static function get_the_loai($id){
            $db = new Db();
            $sql = "SELECT Ten FROM theloai WHERE id = '$id'";
            $result = $db->select_to_array($sql);
            return $result;
        }
    }
?>