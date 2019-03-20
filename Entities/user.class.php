<?php 
    require_once("./config/db.class.php");

    class User{
        public $idUser;
        public $userName;
        public $userEmail;
        public $userPassword;
        public $createdAt;
        public $updatedAt;

        public function __construct($userName, $userEmail, $userPassword)
        {
            # code...
            $this->userName = $userName;
            $this->userEmail = $userEmail;
            $this->userPassword = md5($userPassword);
        }

        //lưu user
        public function save()
        {
            $db = new Db();
            $sql = "INSERT INTO `users` (`name` , `email` , `password`)
                    VALUES ( '$this->userName', '$this->userEmail', '$this->userPassword') ";
            
            $result = $db->query_execute($sql);
            return $result;
        }
        //Đăng nhập
        public static function dangnhap($email, $md5_password){
            $db = new Db();
            $sql = "SELECT * FROM users WHERE email='$email' AND password='$md5_password'";          
            $result = $db->query_execute($sql);
            return $result;
        }
    }
?>