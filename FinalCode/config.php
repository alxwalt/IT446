<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'testUser');
   define('DB_PASSWORD', '65p702WfL&T$');
   define('DB_DATABASE', 'SneakerGang');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

if(!$db)
{
die("Connection failed: ".mysqli_connect_error());
}

echo "Connected successfully";

    

?>