<?php
	session_start();
	include("./sql.php");
	//if($_SESSION["logged_in"] == "true" && $_SESSION["admin"] == "true"){
		$req = "SELECT Team_Number, CASE WHEN 1=1 THEN ";
		foreach($_POST as $key=>$value){
			if (strlen($value) > 0){
				$req .= "AVG(" . $key . ")*" . $value . "+";
			}
		}
		$req .= "0 ELSE 0 END as 'Weight' FROM Match_Data GROUP BY 1 ORDER BY 2 DESC LIMIT 10";
		$data = getQuery($req);
		$result = array("admin"=>true);
		$result["teams"] = $data;
		$result["str"] = $req;
		echo json_encode($result);
	//} else {
	//	echo '{"admin": false}';
	//}
?>
