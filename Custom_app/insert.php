<?php

session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "capp";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);


//get data
$ProductID = $request->ProductID;
$Price = $request->Price;
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
$sql = "INSERT INTO cart (itemNo,ProductID,Price,name,phone,email)VALUES(NULL,'$ProductID','$Price','$name','$phone','$email')";


//check connection
if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();


?>