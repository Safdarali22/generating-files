<?php

$data = array(
    array("Id", "Name", "Email", "Password"),
    array("01", "Ahmed", "ahmed@gmail.com", "365826"),
    array("02", "Ahad", "ahad@gmail.com", "1234569"),
    array("03", "Zubair", "zubair@gmail.com", "12345"),
);


$filename = "../files/database_Csv_file.csv";
$file_resource = fopen($filename, "w");

foreach ($data as $row) {
    fputcsv($file_resource, $row);
}

fclose($file_resource);

header("Location: ../index.php?message=CSV File Generated");
exit;
?>
