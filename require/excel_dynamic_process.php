<?php 
require_once("connection.php");

header("Content-type:application/vnd-ms-excel");
header("Content-Disposition:attachment; filename=My_Excel_Database_File.xls");
header("Cache-Control:no-cache,no-store,must-revalidate");
header("Pragma:no-cache");
header("Expires:0");

$query  = "select * from users";
$result = mysqli_query($connect,$query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Database Process File</title>
</head>
<body>

	<h1 align="center">User Records</h1>
	<?php 
	if ($result->num_rows>0) {
	
	 ?>
	<table border="1" cellpadding="10" cellspacing="5" align="center">
		<tr>
			<td>ID</td>
			<td>Full Name</td>
			<td>Gender</td>
			<td>Email</td>
			<td>Password</td>
			<td>Status</td>
		</tr>
		<?php 
			while($row = mysqli_fetch_assoc($result)){
		 ?>
		<tr>
			<td><?= $row['user_id']; ?></td>
			<td><?= $row['full_name']; ?></td>
			<td><?= $row['gender']; ?></td>
			<td><?= $row['user_email']; ?></td>
			<td><?= $row['user_password']; ?></td>
			<td><?= $row['is_active']; ?></td>
		</tr>
		<?php 
			}
		 ?>
	</table>
	<?php
		} 
	 ?>
</body>
</html>