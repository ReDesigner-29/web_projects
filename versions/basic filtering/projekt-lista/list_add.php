<!--connection to the database-->
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "projekt-lista-2";

$conn_2 = mysqli_connect($servername, $username, $password, $dbname);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>black templar list of units</title>
    <link rel="icon" type="image/png" href="symbol.png">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <h1>WELCOME TO MY LIST BROTHER!</h1>
        <button class="main_buttons"><a href="list_view.php"><h2>see the list of units</h2></a></button>
        <button class="main_buttons"><a href="list_add.php"><h2>add units to the list</h2></a></button>
        <button class="main_buttons"><a href="list_delete.php"><h2>delete units from the list</h2></a></button>
        <button class="main_buttons"><a href="main.html"><h2>home button</h2></a></button>
    </nav>

    <div id = "barrier"></div>
    <main>
        <form action="list_add.php" method="post" id="form_add">
            <input type="text" name="name" class="input_add" placeholder="name">
            <input type="number" name="size" class="input_add" placeholder="size">
            <input type="number" name="points" class="input_add" placeholder="points">
            <input type="number" name="category_id" class="input_add" placeholder="category id">
            <input type="submit" value="ADD" id="submit_add">
        </form>

        <!--script for adding units to the base-->
        <?php
            if($_POST["name"] == "" || $_POST["size"] == "" || $_POST["points"] == "" || $_POST["category_id"] == ""){
                echo "";
            } else {
                $name = $_POST["name"];
                $size = $_POST["size"];
                $points = $_POST["points"];
                $category_id = $_POST["category_id"];


                $sql_2 = "INSERT INTO units (name, size, points, category_id) VALUES ('$name','$size','$points','$category_id');";
                mysqli_query($conn_2, $sql_2);
            }
        ?>
    </main>

</body>
</html>