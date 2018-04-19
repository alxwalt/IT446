<!DOCTYPE html>
<html>
<title>DBA</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<?php
   include("session.php");		
   session_start();	
?>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="admin.php" class="w3-bar-item w3-button"><b>SneakerGang</b> Admin</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      
      <a href="SneakerGang.php" class="w3-bar-item w3-button">Home</a>	
	<a href="admin.php" class="w3-bar-item w3-button">Admin</a>


	<a href="logout.php" class="w3-bar-item w3-button">Sign Out</a>

    </div>
  </div>
</div>


		
<p>
	<h3> <font color ="white">SneakerGang</font></h3>
</p>

<?php
		$input = escapeshellcmd('sh bash.sh');
   		$output = shell_exec($input);
		echo $output; 
?>


<p>
<?php
if($db)
$sql = "SHOW GLOBAL STATUS LIKE 'Uptime' ";
$results = mysqli_query($db, $sql);


if ($results->num_rows > 0){ 
while($row = $results->fetch_assoc()) {

$seconds = $row["Value"];
echo "Mysql Uptime - ".gmdate("H:i:s", $seconds);
        
    }
}


?>
</p>
<p>



<?php

$Mongo = shell_exec("mongo --quiet --eval \"db.serverStatus().uptime\"");

$mongoUptime = gmdate("H:i:s", $Mongo);

echo "Mongo Uptime - ". $mongoUptime;


?>
</p>

</body>
</html>