<?php

// include("./code/php/db_con.php");


class getWork
{



    function showWork()
    {

        $db =  new Database();

        $opdrachtNaam = $_GET["opdrachten"];

        $data = mysqli_query($db->con, "SELECT `id`, `opdracht_naam`, `vak`, `data` FROM `opdrachten` WHERE opdracht_naam = '$opdrachtNaam' ");
        $opdracht = mysqli_fetch_array($data);
        $opdracht_array = (json_decode($opdracht["data"]));
        return $opdracht_array;
    }
}
