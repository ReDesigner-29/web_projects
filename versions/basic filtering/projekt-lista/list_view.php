<!--connection to the database-->
<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "projekt-lista-2";

  $conn = mysqli_connect($servername, $username, $password, $dbname);
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
          <!--drop down for filtering by category-->
        <div id = "center_dropdown">
            <select name="kategorie" id="categories" onchange="filtruj()">
            <?php
                $sql_1 = "SELECT * FROM `categories`;";
                $result_1 = $conn->query($sql_1);

                if ($result_1->num_rows > 0) {
                  while($row = $result_1->fetch_assoc()) {
                    echo "<option class='option' value=". $row["id"].">".$row["category"]."</option>";
                  }
                } else {
                  echo "0 results";
                }
            ?>
            </select>
            <br>
        </div>
        <div id = "center_table">
        <table id="units_table">
          <tr>
            <td id="column_id">id</td>
            <td id="column_name">name</td>
            <td id="column_size">size</td>
            <td id="column_points">points</td>
            <td id="column_category">category</td>
          </tr>
        <!--showing all elements of the table "projekt-lista-2"-->
        <?php
        $sql_2 = "SELECT * FROM `units`;";
            $result_2 = $conn->query($sql_2);

            if ($result_2->num_rows > 0) {
              for($i=1;$row = $result_2->fetch_assoc();$i++) {
                echo "<tr id='row_$i' class='row'>";
                echo "<td >".$row["id"]."</td>";
                echo "<td >".$row["name"]."</td>";
                echo "<td >".$row["size"]."</td>";
                echo "<td >".$row["points"]."</td>";
                echo "<td id='$i' >".$row["category_id"]."</td>";
                echo "</tr>";
              }
            } else {
              echo "0 results";
            }
        ?>
        </table>
    </div>
    </main>

    <script>
//        filtrowanie po kategori
      function filtruj() {
            let chosen_category = document.getElementById('categories').value
            for(let i=1;i < 30;i++){
                let category_id = document.getElementById(i).innerText;
                if(chosen_category == category_id){
                    console.log(category_id)
                    document.getElementById("row_"+i).style.display = "table-row";

                } else {
                    document.getElementById("row_"+i).style.display = "none";
                }
                if(chosen_category == 10){
                    document.getElementById("row_"+i).style.display = "table-row";
                }
            }
      }
    </script>
</body>
</html>
<?php
mysqli_close($conn);