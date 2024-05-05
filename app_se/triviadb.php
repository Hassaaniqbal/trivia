<?php

session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) 
{
    header("location: menu.php");
    exit;
}


// Get logged in user's name
$loggedInUserName = $_SESSION['username'];


if (isset($_POST['logout'])) {
    
    header("location: menu.php");
    exit;
}

include '../../dataa/requestapi.php';
?>