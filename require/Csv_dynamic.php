<?php 

require_once("connection.php");

$filename      = "../files/database_Csv_file.csv";
$file_resource = fopen($filename, "a+");

$counter = 0;
$result = false; 

while ($data = fgetcsv($file_resource)) {
    if ($counter == 0) {
        $counter++;
        continue;
    }

    $counter++;

    $query = "INSERT INTO users VALUES ('" . $data[0] . "','" . $data[1] . "','" . $data[2] . "','" . $data[3] . "','" . $data[4] . "','" . $data[5] . "')";

    $result = mysqli_query($connect, $query);

}

fclose($file_resource);

if ($result) {
    header("Location: ../index.php?message= Inserted From Excel File");

} else {
    header("Location: ../index.php?message=Not Inserted From Excel File");

}

?>
