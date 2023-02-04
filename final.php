<html>
    <body>
<form action="final.php" method="post" id="final">>
<label for="num">Name:</label><br>
  <input type="text" id="name" name="name" ><br>
  <label for="num">Address:</label><br>
  <input type="text" id="address" name="address" ><br>
  <label for="num">Credit Card:</label><br>
  <input type="text" id="cc" name="cc" ><br>
  <input type="submit" value="Submit">
  </form> 
</body>
</html>
<?php
$cnx = new mysqli('localhost', 'root', '', 'my_data');

if ($cnx->connect_error) {
    die('Connection failed: ' . $cnx->connect_error);
}
$name = $_REQUEST["name"];
$add = $_REQUEST['address'];
$cc=$_REQUEST['cc'];
$query="INSERT INTO orders (cName,cAdd,cPhone)
VALUES ('$name','$add','$cc')";


$cursor = $cnx->query($query);
$cnx->close();
?>