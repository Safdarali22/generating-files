<?php 

mysqli_report(false);
$connect = mysqli_connect("localhost","root","","blog_management");

if (mysqli_connect_errno()) {
	echo"Error Message : ".mysqli_connect_error();
	echo "<br/>";
}




?>