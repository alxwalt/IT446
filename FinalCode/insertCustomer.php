<?php

include ("config.php");


$fName = mysqli_real_escape_string($db, $_POST['fName']);
$lName = mysqli_real_escape_string($db, $_POST['lName']);
$PhoneNumber = mysqli_real_escape_string($db, $_POST['pNumber']);
$Username = mysqli_real_escape_string($db, $_POST['username']);
$Password = mysqli_real_escape_string($db, $_POST['password']);


$sql = "INSERT INTO Customer (FirstName, LastName, PhoneNumber, Username, Password) 
VALUES (?,?,?,?,?)";

$stmt = mysqli_stmt_init($db);

if(!mysqli_stmt_prepare($stmt,$sql))
{
echo "SQL Error";
}

else
{

	mysqli_stmt_bind_param($stmt, "ssssss", $fName, $lName, $PhoneNumber, $Username, $Password);
	mysqli_stmt_execute($stmt);


}

header("Location: admin.php");
 
?>