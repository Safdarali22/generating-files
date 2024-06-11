<?php 
require("../excelwriter/excelwriter.inc.php");






$filename ="../files/My_Excel_Writer.xls";
$excel = new ExcelWriter($filename);

$col_heading = array("Id","Name","Email","Password");

$excel->writeLine($col_heading,array("text-align"=>"center","color"=>"red"));


$user_1 = array("01","Ahmed","ahmed@gmail.com","12345");

$excel->writeLine($user_1,array("text-align"=>"center"));


$user_2 = array("02","Ahad","ahad@gmail.com","12345");

$excel->writeLine($user_2,array("text-align"=>"center"));

$user_3 = array("03","Nasir","nasir@gmail.com","12345");

$excel->writeLine($user_3,array("text-align"=>"center"));

$user_4 = array("04","Zubair","zubair@gmail.com","12345");

$excel->writeLine($user_4,array("text-align"=>"center"));

$excel->writeCol(05);
$excel->writeCol("Nimra");
$excel->writeCol("nimra@gmail.com");
$excel->writeCol("12345");


$excel->close();

header("Location: ../index.php?message=Excel class File Static Generated");



 ?>