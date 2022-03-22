<?php

// echo "hallo";
include('./db_con.php');


class Message
{


    private $name;
    private $email;
    private $message;



    function getMessage()
    {


        if (!empty($_POST["name"]) && !empty($_POST["email"]) && !empty($_POST["message"])) {

            $this->name = $_POST["name"];
            $this->email = $_POST["email"];
            $this->message = $_POST["message"];

            //    echo $this->name;
            //    echo $this->email;
            //    echo $this->message;

            $db =  new Database();
            $sendMessage = mysqli_query($db->con, "INSERT INTO `vragen`(`naam`, `email`, `bericht`) VALUES ('$this->name','$this->email','$this->message')");
            if ($sendMessage) {
                echo "bericht is verstuurd";
                header('location: ../contact.php?id=true');
                
            }
        } else {
            header('location: ../contact.php?id=false');
        }
    }
}



$hh = new Message();
$gg = $hh->getMessage();
