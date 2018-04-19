<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sneaker Gang Administrator</title>
</head>
<body>
<?php
   include("session.php");
   session_start();
?>
		<h1><a href = "admin.php">Sneaker Gang Administrator <?php echo $login_session; ?></h1> 
     		<h2><a href = "logout.php">Sign Out</a></h2>

<h2>Add Shoe </h2>
<form action="insertShoes.php" method="post">
    <p>
        <label for="name">Name:</label>
        <input type="text" name="name" id="pname">
    </p>
    <p>
        <label for="price">Price:</label>
        <input type="text" name="price" id="pprice">
    </p>
    <p>
        <label for="color">Color:</label>
        <input type="text" name="color" id="pcolor">
    </p>
    <p>
        <label for="weight">Weight:</label>
        <input type="text" name="weight" id="pweight">
    </p>
    <p>
        <label for="upperHeight">Upper Height:</label>
        <input type="text" name="upperHeight" id="pupperHeight">
    </p>


    <input type="submit" value="Submit">
</form>
