<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "capp";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$name=$request->name;
$phone=$request->phone;
$email=$request->email;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//insert data
$sql = "INSERT INTO fullcart (ItemNo,ProductID,Price,name,phone,email)(SELECT ItemNo,ProductID,Price,name,phone,email FROM cart where name='$_SESSION[namename]' and email='$_SESSION[emailemail]' and phone='$_SESSION[phonephone]')";
//alert box
if ($conn->query($sql) === TRUE) {
  echo "New order created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();


?>