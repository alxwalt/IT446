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



<p>
<?php


$database = "SneakerGang";
$table = "Shoes";


$sql = "SELECT * FROM Shoes";
$result = $db->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "ProductID: " . $row["ProductID"]. " - Name: " . $row["Name"]. " - Price: " . $row["Price"]. " - Color: " . $row["Color"]. " - Weight: " . $row["Weight"]. " - Upper Height: " . $row["UpperHeight"]. " - Size: " . $row["Size"]. " - Quantity: " . $row["Quantity"]. "<br>";
    }
} else {
    echo "0 results";
}

?>
</p>


<h2> Add Customers </></h2>

<form action="insertCustomers.php" method="post">
    <p>
        <label for="fName">First Name:</label>
        <input type="text" name="fName" id="cfname">
    </p>
    <p>
        <label for="lName">Last Name:</label>
        <input type="text" name="lName" id="clname">
    </p>
    <p>
        <label for="pNumber">Phone Number:</label>
        <input type="text" name="pNumber" id="cPnumber">
    </p>
    <p>
        <label for="username">Username:</label>
        <input type="text" name="username" id="cUsername">
    </p>
	
    <p>
        <label for="password">Password:</label>
        <input type="text" name="password" id="cpassword">
    </p>
    

    <input type="submit" value="Submit">
</form>


<p>
<?php
$database = "SneakerGang";
$table = "Customer";


$sql = "SELECT * FROM Customer";
$result = $db->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo "CustomerID: ". $row["CustomerID"]. " - Name: ". $row["FirstName"]. " " . $row["LastName"] . " - Phone Number: ". $row["PhoneNumber"]. " - Username: ". $row["Username"]. "<br>" ;
    }
} else {
    echo "0 results";
}
?>
</p>

</body>
</html>