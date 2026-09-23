<?php 
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "test_unit_list";

  $conn = new mysqli($servername, $username, $password, $dbname);
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
    <header>
        <h1>WELCOME TO MY LIST BROTHER!</h1>
        <button class="main_buttons"><a href="list_view.php"><h2>see the list of units</h2></a></button>
        <button class="main_buttons"><a href="list_add.php"><h2>add units to the list</h2></a></button>
        <button class="main_buttons"><a href="list_delete.php"><h2>delete units from the list</h2></a></button>
        <button class="main_buttons"><a href="main.html"><h2>home button</h2></a></button>
    </header>
    <div id = "barrier"></div>
    <main>
      <div id = "center">
        <select name="kategorie" id="categories" onchange="filtruj()">
          
        <?php

            $sql_1 = "SELECT * FROM `categories`;";
            $result_1 = $conn->query($sql_1);

            if ($result_1->num_rows > 0) {
              while($row = $result_1->fetch_assoc()) {
                echo "<option value=". $row["id"].">".$row["category"]."</option>";
              }
            } else {
              echo "0 results";
            }
                
        ?>
        </select>

        <br>

        <table>
          <tr>
            <td>id</td>
            <td>nazwa</td>
            <td>rozmiar</td>
            <td>punkty</td>
            <td>kategoria</td>
          </tr>
        <?php

        $sql_2 = "SELECT * FROM `units`;";
            $result_2 = $conn->query($sql_2);

            if ($result_2->num_rows > 0) {
              while($row = $result_2->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row["id"]."</td>";
                echo "<td>".$row["name"]."</td>";
                echo "<td>".$row["size"]."</td>";
                echo "<td>".$row["points"]."</td>";
                echo "<td>".$row["category_id"]."</td>";
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
      function filtruj() {
        let kategoria = document.getElementById('categories').value;
        let 
        console.log(kategoria);
      }
    </script>
</body>
</html>

<?php
mysqli_close($conn);