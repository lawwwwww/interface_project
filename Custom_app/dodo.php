<?php

//unset session if logout
	session_start();
	session_unset();
	session_destroy();

//return to login page
	header("Location:./#log")
?>
