#! bin/bash
selectvar="SELECT Count(*) AS 'Total Inventory' FROM Shoes;"

mysql --user=testUser --password="65p702WfL&T$" SneakerGang << eof 
$selectvar
eof