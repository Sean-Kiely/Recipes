<?php


$con = mysql_connect("localhost", "test", "test") or  die('Sorry, could not connect to server');


mysql_select_db("recipe", $con) or die('Sorry, could not connect to database');


$articleid = $_GET['id'];
# id passed from news.inc.php


$query = "SELECT date,title,article from news where articleid = $articleid";


$result = mysql_query($query) or die('Sorry, could not find recipe requested');


$row = mysql_fetch_array($result, MYSQL_ASSOC) or die('No records retrieved');

$title = $row['title'];


$date = $row['date'];


$article = $row['article'];

$article = nl2br($article);


echo "<h3>$date</h3>\n";

echo "<h3>$title</h3><br>\n";

echo "<h3>$article</h3>\n";