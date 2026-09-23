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
        <table>
        <tr>
            <th>unit name</th>
            <th>squad size</th>
            <th>points</th>
        </tr>
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "projekt-lista";

            $conn = new mysqli($servername, $username, $password, $dbname);

            $sql = "SELECT * FROM `unitList`;";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo "<tr><td>". $row["name"]. "</td> <td>" . $row["squad size"]. "</td> <td>" . $row["points"]. "</td></tr>";
              }
            } else {
              echo "0 results";
            }
                
        ?>
    </table>
    </div>
    </main>

</body>
</html>