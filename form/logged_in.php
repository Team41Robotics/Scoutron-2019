<?php
	session_start();
	include("./sql.php");
	//getQuery("INSERT INTO Match_Data (Team_Number) VALUES (41)");
	//if ($_COOKIE["logged_in"]){
	if($_SESSION["logged_in"] == "true"){
		die();
	} else {
		echo "alert(\"Don't forget to log in to submit data!\");";
	}
?>