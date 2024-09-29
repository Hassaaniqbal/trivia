<?php
// Connect to the database
$con = mysqli_connect("localhost", "root", "", "game");

// Check if connection is successful
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

// Query to get top 10 players based on scores in descending order
$query = "SELECT * FROM score ORDER BY scores DESC LIMIT 10";
$result = mysqli_query($con, $query);

// Check if query execution was successful
if (!$result) {
    die("Query failed: " . mysqli_error($con));
}
?>

<!-- Start HTML Table to display the scores -->
<table border="1">
    <thead>
        <tr>
            <th>Username</th>
            <th>Score</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($player = mysqli_fetch_array($result)) { ?>
            <tr>
                <td class="username"><?php echo $player['username']; ?></td>
                <td class="scores"><?php echo $player['scores']; ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<?php
// Close the database connection
mysqli_close($con);
?>
