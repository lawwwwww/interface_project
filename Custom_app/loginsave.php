<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "capp";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$name = $request->name;
$phone = $request->phone;
$email = $request->email;

session_start();
$_SESSION['username']= $name;
$_SESSION['phone']=$phone;

						

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


//insert data
//$sql = "INSERT INTO feedback (Num,range1,range2,description)VALUES(NULL,'$range1','$range2','$description')";

//alert box
/*if ($conn->query($sql) === TRUE) {
  echo "New feedback created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
*/
$conn->close();


?>