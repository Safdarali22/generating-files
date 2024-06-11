<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Generate Files</title>
    <style type="text/css">
    	
    	body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    color: #333;
}

a {
    display: inline-block;
    margin: 10px;
    padding: 10px 20px;
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

a:hover {
    background-color: #0056b3;
}

@media (max-width: 768px) {
    .container {
        padding: 10px;
    }
}
.message-container {
            margin: 20px auto;
            text-align: center;
            background-color: green;
            width: 400px;
            height: 30px;
            color: white;
            border-radius: 7px;
        }

        .message-container p {
            line-height: 30px;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Generate Files Using Headers Excel Library and CSV Functions</h1>
        <a href="require/excel_static_process.php">Generate Static Excel File </a>
        <a href="require/excel_dynamic_process.php">Generate Dynamic Excel File </a>
        <a href="require/excel_class_static_process.php">Generate Static Excel File Using Excel Library </a>
        <a href="require/excel_class_dynamic_process.php">Generate Dynamic Excel File Using Excel Library </a>
        <a href="require/word_static.php">Generate Static word File </a>
        <a href="require/word_dynamic.php">Generate Dynamic word File </a>
        <a href="require/Csv_static.php">Generate Static CSV File </a>
        <a href="require/Csv_dynamic.php">Generate Dynamic CSV File </a>
    </div>
    <?php
      
      if (isset($_GET['message'])) {
      	?>
       <div class="message-container">
        <p><?= $_GET['message'] ?></p>
    </div>

      	<?php
      }

    ?>
</body>
</html>
