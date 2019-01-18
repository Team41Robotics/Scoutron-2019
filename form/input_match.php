<?php
	session_start();
	include("./sql.php");
	//getQuery("INSERT INTO Match_Data (Team_Number) VALUES (41)");
	//if ($_COOKIE["logged_in"]){
	if($_SESSION["logged_in"] == "true"){
		$data = array(
			"Team_Number"=>$_POST["Team_Number"],
			"Auton_Line"=>(isset($_POST["Auton_Line"]) ? 1 : 0),
			"Hatch_Auton"=>(isset($_POST["Hatch_Auton"]) ? 1 : 0),
			"Cargo_Auton"=>(isset($_POST["Cargo_Auton"]) ? 1 : 0),
			"Hatch_Teleop"=> ($_POST["Hatch_Teleop"] == "NULL") ? null : $_POST["Hatch_Teleop"],
			"Cargo_Teleop"=> ($_POST["Cargo_Teleop"] == "NULL") ? null : $_POST["Cargo_Teleop"],
			"Climb_Teleop"=> ($_POST["Climb_Teleop"] == "NULL") ? null : $_POST["Climb_Teleop"],
			"Climbing"=> ($_POST["Speed"] == "NULL") ? null : $_POST ["Climbing"],			
			"Speed"=> ($_POST["Speed"] == "NULL") ? null : $_POST["Speed"],
			"Outcome"=> ($_POST["Outcome"] == "NULL") ? null : $_POST["Outcome"],
			"Total_Game_Points"=>$_POST["Total_Game_Points"],
			"HAB_Docking"=>(isset($_POST["HAB_Docking"]) ? 1 : 0),
			"Complete_Rocket"=>(isset($_POST["Complete_Rocket"]) ? 1 : 0),
			"Foul_Points"=> $_POST["Foul_Points"],
			"Number_Of_Fouls"=> $_POST["Number_Of_Fouls"],
			"Notes"=>$_POST["Notes"]);
		$data["Username"] = $_SESSION["username"];
		insertData("Match_Input",removeNull($data));
		echo '{"logged_in": true}';
	} else {
		echo '{"logged_in": false}';
	}
?>
