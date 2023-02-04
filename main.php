<html>
<head>
    <title>SQL SELECT Statement</title>
</head>
<body>
<table align="center" border="1">
<?php
    $cnx = new mysqli('localhost', 'root', '', 'my_tables');

    if ($cnx->connect_error)
        die('Connection failed: ' . $cnx->connect_error);
    $counter=1;
$countertwo = 1;
    $query = 'SELECT * FROM products';
    $cursor = $cnx->query($query);
    echo '<tr> <td> Number </td> <td> ProductName </td><td>Description</td><td>ListPrice</td><td>Review</td><td>image</tr>';
while ($row = $cursor->fetch_assoc()) {
    if ($counter < 26) {
        echo '<tr>';
        echo '<td>' . $counter . '<br>' . '</td><td>' . $row['productName'] . '</td><td align="right">' . $row['productDesc'] . '</td><td>' . $row['listPrice']*1.05 . '</td><td>' . $row['review'] . '</td>';
        echo '<td>';
?>
        <img src="aimage/<?php echo ($counter) ?>.png" alt="albert">
        <?php
        echo '</td></tr>';
        $counter++;

    }
     else {
        echo '<tr>';
        echo '<td>' . $counter . '<br>' . '</td><td>' . $row['productName'] . '</td><td align="right">' . $row['productDesc'] . '</td><td>' . $row['listPrice']*1.05 . '</td><td>' . $row['review'] . '</td>';
        echo '<td>';
        ?>
        <img src="rimage/<?php echo ($countertwo) ?>.png" alt="riteaid">
        <?php
        echo '</td></tr>';
        $countertwo++;
        $counter++;

    }
}

    $cnx->close();
?>
</table>
<form action="main_item.php" method="post" id="main_form">>
  <label for="num">Number of item you wish to purchase:</label><br>
  <input type="text" id="item" name="item" value="item"><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>