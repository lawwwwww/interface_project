<?php
	session_start();
	

	$_SESSION["namename"]=$_POST["namee"];
	$_SESSION["emailemail"]=$_POST["emaill"];
	$_SESSION["phonephone"]=$_POST["phonee"];
	
	
	header('Location:./#homepage');
?>