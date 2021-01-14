<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "capp";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//delete data
$sql = "DELETE FROM cart where name='$_SESSION[namename]' and email='$_SESSION[emailemail]' and phone='$_SESSION[phonephone]'";
//alert box
if ($conn->query($sql) === TRUE) {
  echo "New record created successfully"
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();


?>