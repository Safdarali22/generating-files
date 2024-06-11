<?php
// Output the Word document
header("Content-type:application/vnd-ms-word");
header("Content-Disposition:attachment;filename=My_Word_File.doc");
header("Cache-Control:no-cache,no-store,must-revalidate");
header("Pragma:no-cache");
header("Expires:0");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>..:: Process File ::..</title>
</head>
<body>

    <h1 style="text-align: center; color: lightseagreen;">User Records</h1>

    <table align="center" cellpadding="10" cellspacing="5" border="1">
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Email</td>
            <td>Password</td>
        </tr>
        <tr>
            <td>01</td>
            <td>Ahmed Ali</td>
            <td>ahmed@gmail.com</td>
            <td>12345</td>
        </tr>
        <tr>
            <td>02</td>
            <td>Hassan Ali</td>
            <td>hassan@gmail.com</td>
            <td>12345</td>
        </tr>
        <tr>
            <td>03</td>
            <td>Zubair</td>
            <td>zubair@gmail.com</td>
            <td>12345</td>
        </tr>
        <tr>
            <td>04</td>
            <td>Ahad Ali</td>
            <td>ahad@gmail.com</td>
            <td>12345</td>
        </tr>
    </table>

    <!-- <script>
        
        setTimeout(function(){
            window.location.href = "../index.php?message=Word File Static Generated";
        }, 5000); 
    </script> -->

</body>
</html>
