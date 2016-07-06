<h2 align="center">What's Cookin'</h2><br>


<?php


$con = mysql_connect("localhost", "test", "test") or die('Sorry, could not connect to database server');


mysql_select_db("recipe", $con) or die('Sorry, could not connect to database');


$query = "SELECT title,date,article from news order by date desc limit 0,2";


$result = mysql_query($query) or die('Sorry, could not get recipes at this time ');


if (mysql_num_rows($result) == 0)


{


   echo "<h3>Kitchen Closed!</h3>";


} else


{


   while($row=mysql_fetch_array($result, MYSQL_ASSOC))


   {


       $title = $row['title'];


       $date = $row['date'];


       $article = $row['article'];

       $article = nl2br($article);


       echo "<h3>$date</h3>\n";

       echo "<h3>$title</h3><br>\n";

       echo "<h3>$article</h3>\n";



   }


}


?>