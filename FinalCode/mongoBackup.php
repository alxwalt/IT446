<?php 


exec("python mongoBackup.py");

header("Location: DBA.php");
?>