<?php

session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true)//session variable is not set/set to null and user not logged in.
{
  header("location: login.php");
  exit;
}

//  Get logged in user's name
$loggedInUserName = $_SESSION['username'];



if (isset($_POST['logout'])) 
{
  
  session_unset();
  session_destroy();

  // Redirect to login page
  header("location: login.php");
  exit;
}

?>
