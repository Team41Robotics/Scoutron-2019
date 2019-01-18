<?php
	session_start();
	include("./sql.php");
	//getQuery("INSERT INTO Match_Data (Team_Number) VALUES (41)");
	//if ($_COOKIE["logged_in"]){
	if($_SESSION["logged_in"] == "true"){
		$data = array(
			"Team_Number"=>$_POST["Team_Number"],
			"Wheel_Base"=> ($_POST["Wheel_Base"] == "NULL") ? null : $_POST["Wheel_Base"],
			"Wheel_Type"=> ($_POST["Wheel_Type"] == "NULL") ? null : $_POST["Wheel_Type"],
			"Hatch_Do"=> (isset($_POST["Hatch_Do"])) ? 1 : 0,			
			"Cargo_Do"=> (isset($_POST["Cargo_Do"])) ? 1 : 0,
			"Climb1_Do"=> (isset($_POST["Climb1_Do"])) ? 1 : 0,
			"Climb2_Do"=> (isset($_POST["Climb2_Do"])) ? 1 : 0,
			"Climb3_Do"=> (isset($_POST["Climb3_Do"])) ? 1 : 0,
			"Notes"=>$_POST["Notes"],
			"Username"=>$_SESSION["username"]);
		if (isset($_FILES['Image'])){
			$data['Image'] = file_get_contents($_FILES['Image']["tmp_name"]);
		}
		insertData("Pit_Input",removeNull($data));
		echo '{"logged_in": true}';
	} else {
		echo '{"logged_in": false}';
	}
?>
