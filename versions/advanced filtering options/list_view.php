<!--connection to the database-->
<?php
include("connection.php");
?>
<!--the header file (with the header)-->
<?php
    include("header.php");
?>
        </div>
        <!--filtering generation-->
        <div id="center_filter">
            <?php
            $sql_2 = "SELECT * FROM `categories` ORDER BY `id` ASC";
            $result_2 = $conn->query($sql_2);

            if ($result_2->num_rows > 0) {
                for($i=1;$row = $result_2->fetch_assoc();$i++) {
                    echo "<div class='item'>";
                    echo "<label for='filter_$i' class='checkbox_filtering_label'>".$row["category"]."</label>";
                    echo "<br>";
                    echo "<input type='checkbox' id='filter_$i' name='filter_$i' value='".$row["category"]."' class='checkbox_filtering' onchange='filter()'><br>";
                    echo "</div>";
                }
            } else {
                echo "0 results";
            }
            ?>
        </div>
        <!--showing the amount of units-->
        <?php
        $sql_2 = "SELECT count(id) FROM units;";
        $result_2 = $conn->query($sql_2);

        if ($result_2->num_rows > 0) {
            for($i=1;$row = $result_2->fetch_assoc();$i++) {
                echo "<p class='hidden'>"."amount of units: "."<div id='amount_of_units'>".$row["count(id)"]."</div>"."</p>";
            }
        } else {
            echo "0 results";
        }
        ?>
        <!--amount of categoies-->
        <?php
        $sql_2 = "SELECT count(id) FROM categories;";
        $result_2 = $conn->query($sql_2);

        if ($result_2->num_rows > 0) {
            for($i=1;$row = $result_2->fetch_assoc();$i++) {
                echo "<p class='hidden'>"."amount of categories: "."<div id='amount_of_categories'>".$row["count(id)"]."</div>"."</p>";
            }
        } else {
            echo "0 results";
        }
        ?>
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
    $sql_2 = "SELECT units.id, units.name, units.size, units.points, categories.category FROM units,categories WHERE units.category_id = categories.id ORDER BY units.category_id;";
        $result_2 = $conn->query($sql_2);

        if ($result_2->num_rows > 0) {
          for($i=1;$row = $result_2->fetch_assoc();$i++) {
            echo "<tr id='row_$i' class='row'>";
            echo "<td >".$row["id"]."</td>";
            echo "<td >".$row["name"]."</td>";
            echo "<td >".$row["size"]."</td>";
            echo "<td >".$row["points"]."</td>";
            echo "<td id='$i' >".$row["category"]."</td>";
            echo "</tr>";
          }
        } else {
          echo "0 results";
        }
    ?>
        </table>
    <script>
function filter() {
    const amount_of_units = document.getElementById("amount_of_units").innerText
    const amount_of_categories = document.getElementById("amount_of_categories").innerText

    let chosen_filter = []
    // collect all checked filters
    for (let a = 1; a < parseInt(amount_of_categories) + 1; a++) {
        let checkbox = document.getElementById("filter_" + a)

        if (checkbox.checked) {
            chosen_filter.push(checkbox.value)
        }
    }
    // filter rows
    for (let i = 1; i < parseInt(amount_of_units) + 1; i++) {
        let category = document.getElementById(i).innerText

        if (chosen_filter.length === 0 || chosen_filter.includes(category)) {
            document.getElementById("row_" + i).style.display = "table-row"
        } else {
            document.getElementById("row_" + i).style.display = "none"
        }
    }

}
</script>

<?php
include "footer.php";