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

<h2> Add Customers </>

<form action="insertCustomer.php" method="post">
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
        <label for="password">Password:</label>
        <input type="text" name="password" id="cpassword">
    </p>
    

    <input type="submit" value="Submit">
</form>

</body>
</html>
