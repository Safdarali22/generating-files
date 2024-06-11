<?php 

require_once("connection.php");
require_once("../excelwriter/excelwriter.inc.php");

$filename = "../files/database_excel_writer.xls";
$excel = new ExcelWriter($filename);


$query = "select * from users";
$result = mysqli_query($connect,$query);


if ($result->num_rows>0) {
	$colheading = array("Id","Full Name","Gender","Email","Password","Status");
	$excel->writeLine($colheading,array("text-align"=>"center"));
	while($row = mysqli_fetch_assoc($result)){

		$excel->writeLine($row,array("text-align"=>"center"));

	}
}

$excel->close();

header("Location: ../index.php?message=Excel class File Dynamic Generated");

?>