<!--connection to the database-->
<?php
include("connection.php");
?>
<!--the header file (with the header)-->
<?php
    include("header.php");
?>
        <form action="list_add.php" method="post" id="form_add">
            <input type="text" name="name" class="input_add" placeholder="name">
            <input type="number" name="size" class="input_add" placeholder="size">
            <input type="number" name="points" class="input_add" placeholder="points">
            <input type="number" name="category_id" class="input_add" placeholder="category id">
            <input type="submit" value="ADD" id="submit_add">
        </form>

        <!--script for adding units to the base-->
        <?php
            if(isset($_POST["name"]) || isset($_POST["size"]) || isset($_POST["points"]) || isset($_POST["category_id"])){
                $name = $_POST["name"];
                $size = $_POST["size"];
                $points = $_POST["points"];
                $category_id = $_POST["category_id"];


                $sql_2 = "INSERT INTO units (name, size, points, category_id) VALUES ('$name','$size','$points','$category_id');";
                mysqli_query($conn, $sql_2);

            } else {
                echo "";
            }
        ?>

<?php
include "footer.php";