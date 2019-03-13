<?php 
    require_once("./config/db.class.php");

    class LoaiTin{
        public $idLoaiTin;
        public $tenLoaiTin;
        public $trangThai;
        public $thuTu;

        public function __construct($tenLoaiTin, $trangThai, $thuTu)
        {
            # code...
            $this->tenLoaiTin = $tenLoaiTin;
            $this->trangThai = $trangThai;
            $this->thuTu = $thuTu;
        }

        public static function list_loai_tin(){
            $db = new Db();
            $sql = "SELECT * FROM loaitin";
            $result = $db->select_to_array($sql);
            return $result;
        }
    }
?>