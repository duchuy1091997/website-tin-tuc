<?php 
    require_once("./config/db.class.php");

    class BaiViet{
        public $idBaiViet;
        public $anhMinhHoa;
        public $tenBaiViet;
        public $tomTat;
        public $noiDung;

        public function __construct($anhMinhHoa, $tenBaiViet, $tomTat, $noiDung)
        {
            # code...
            $this->anhMinhHoa = $anhMinhHoa;
            $this->tenBaiViet = $tenBaiViet;
            $this->tomTat = $tomTat;
            $this->noiDung = $noiDung;
        }

        public static function list_bai_viet(){
            $db = new Db();
            $sql = "SELECT * FROM baiviet";
            $result = $db->select_to_array($sql);
            return $result;
        }
    }
?>