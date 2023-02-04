<?php
$item_id = filter_input(INPUT_POST, 'item', 
FILTER_VALIDATE_INT);
if ($item_id >25){
$item_id = $item_id - 25;
}

 $cnx = new mysqli('localhost', 'root', '', 'my_tables');

 if ($cnx->connect_error)
     die('Connection failed: ' . $cnx->connect_error);


$query = 'SELECT * FROM products';
$cursor = $cnx->query($query);


$cheaper = "a";
$min=0;
?>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  
}
p {
    color: orange;
}
.split {
  height: 75%;
  width: 50%;
  position: fixed;
  z-index: 1;
  
  
  padding-top: 20px;
}

.left {
  left: 200;
 
}

.right {
  right: 0;

}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 250px;
  border-radius: 50%;
}
</style>
</head>
<body>
<?php
$albm=0;
$ritem=0;
$query = 'SELECT * FROM products';
$cursor = $cnx->query($query);
while ($row = $cursor->fetch_assoc()) {
    if ($row['num'] == $item_id) {
        $albm = $row['listprice'];
    }
    $item_id = $item_id + 25;
    if ($row['num'] == ($item_id )) {
        $ritem = $row['listprice'];
    }
    $item_id = $item_id - 25;
}
if($albm>$ritem){
    $cheaper='r';
}
else if ($albm<$ritem){
    $cheaper='a';
}
else{
    $cheaper='a';
}

?>
<div class="split left">
  <div class="centered">
  <img src="aimage/<?php echo ($item_id) ?>.png" alt="albertsons">
    <h2>
        <?php 
        $query = 'SELECT * FROM products';
        $cursor = $cnx->query($query);
        while ($row = $cursor->fetch_assoc()) {
            if ($row['num'] == $item_id) {
                echo ("number:");
                echo ($row['num']);
                echo ('<br>');
                echo ($row['productName']);
                echo ('<br>');
                echo ($row['productDesc']);
                echo ('<br>');
                echo ("rating:");
                echo ($row['review']);
                echo ('<br>');
                echo ("price:");
                echo (number_format(($row['listPrice']*1.05), 2, '.', ','));
                $min = $row['listPrice'] * 1.05;
            }
        }
    ?>
                </h2>
    <p>
        <?php if($cheaper=='a'){
            echo '<h1>';
        echo ("This is the better deal! Buy now!");
            echo '</h1>';
    }
    ?>
    </p>
  </div>
</div>

<div class="split right">
  <div class="centered">
  <img src="rimage/<?php echo ($item_id) ?>.png" alt="riteaid">
    <h2><?php 
    $query = 'SELECT * FROM products';
    $cursor = $cnx->query($query);
        while ($row = $cursor->fetch_assoc()) {
            if ($row['num'] == ($item_id + 25)) {
                echo ("number:");
                echo ($row['num']);
                echo ('<br>');
                echo ($row['productName']);
                echo ('<br>');
                echo ($row['productDesc']);
                echo ('<br>');
                echo ("rating:");
                echo ($row['review']);
                echo ('<br>');
                echo ("price:");
                echo (number_format(($row['listPrice']*1.05), 2, '.', ','));
                $min = $row['listPrice'] * 1.05;
            }
        }
    ?>
                </h2> 
    <p><?php if($cheaper=='r'){
        echo ("This is the better deal! Buy now!");
    }
  
    ?></p>
  </div>
</div>
<?php $cnx->close(); ?>
<form action="final.php" method="post" id="final">>
  <label for="num">Number of item you wish to confirm the purchase of:</label><br>
  <input type="text" id="fitem" name="fitem" ><br>
  <input type="submit" value="Submit">
</form> 
</body>
</html>