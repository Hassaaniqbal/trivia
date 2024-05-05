
<?php
session_start();

if ($_SESSION['loggedin'])
 {
  // Obtain username of logged in user
  $username = $_SESSION['username'];  

  // Obtain current score from javascript
  $score = $_POST['currentScore'];



  // Connect to database
  $conn = mysqli_connect('localhost', 'root', '', 'game');


  $query = "SELECT scores FROM score WHERE username = '$username'";  // Search whether user exists in score table 
  $result = mysqli_query($conn, $query);

  if (mysqli_num_rows($result) > 0) 
  {
    // If user exists, compare current score with score in database
    $row = mysqli_fetch_assoc($result);
    $scores = $row['scores'];

    if ($score > $scores) 
	  {
      
      $query = "UPDATE score SET scores = $score WHERE username = '$username'"; // Update database if current score is greater
      mysqli_query($conn, $query);
    }  
  } 
  else 
  {
    
    $query = "INSERT INTO score (username, scores) VALUES ('$username', $score)"; // Insert new row to score table if user doesn't exist
    mysqli_query($conn, $query);
  }

  mysqli_close($conn);







  // Send response to javascript
  if ($score > $scores) 
  {
    echo 'update';
  } 
  else 
  {
    echo 'insert';
  }
}
?>