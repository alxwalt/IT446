<?php

function viewShoes(){

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

header("Location: admin.php");


}

function viewCustomers()
{
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

}
?>
