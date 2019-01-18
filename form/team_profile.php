<?php
	session_start();
	include("./sql.php");

	if($_SESSION["logged_in"] == "true" && $_SESSION["admin"] == "true"){

		$match_datas = getQuery('SELECT Team_Number, AVG(Auton_Line), AVG(Scale_Auton), AVG(Switch_Auton), AVG(Switch_Teleop), AVG(Scale_Teleop), AVG(Vault), AVG(Climb_Teleop), AVG(Speed), AVG(Outcome), AVG(Total_Game_Points), AVG(Auton_Quest), AVG(Final_Boss), AVG(Foul_Points), AVG(Number_Of_Fouls), AVG(Platform) FROM Match_Data WHERE Team_Number=' . $_POST["Team_Number"])[0];
		$match_datas["Notes"] = "";
		$match_notes = getQuery('SELECT Notes FROM Match_Data WHERE Team_Number=' . $_POST["Team_Number"]);
		for($i = 0; $i < count($match_notes); $i++){
			$match_datas["Notes"] .= $match_notes[$i]["Notes"] . "<br/>";
		}
		$pit_datas = getQuery('SELECT * FROM Pit_Data WHERE Team_Number=' . $_POST["Team_Number"]);
		$new_datas = array();
		foreach($match_datas as $key=>$value){
			$new_key = substr($key, 4, strlen($key)-5);
			if (substr($key, 0, 4) != "AVG(") $new_key = $key;
			$new_datas[$new_key] = $value;
		}
		$all_entries = array("Match_Data"=>$new_datas);
			//"Pit_Data"=>$pit_datas);
		if ($pit_datas[0]){
			$all_entries["Pit_Data"] = $pit_datas[0];
		}
		foreach($pit_datas as $key=>$value){
			if($value["Image"] != null){
				$all_entries["Pit_Data"]["Image"] = base64_encode($value["Image"]);
				break;
			}
		}
		$all_entries["admin"] = true;
		echo json_encode($all_entries);
	} else {
		echo '{"admin": false}';
	}
?>
