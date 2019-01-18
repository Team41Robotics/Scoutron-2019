String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
}

var table, tds;
window.addEventListener("load", function(){
	table = document.getElementById("team_profile");
	var tds = document.getElementsByTagName("td");
	for (var i = 0; i < tds.length; i++){
		tds[i].appendChild(document.createElement("span"));
	}
});
function displayData(data){
	for (var id in data){
		console.log(document.getElementById(id));
		if (data[id]) document.getElementById(id).getElementsByTagName("span")[0].innerHTML = data[id];
	}
}
function formCallback(data){
	if (data.admin){
		var displays = {
			"Team_Number": data.Match_Data.Team_Number,
			"Team_Name": "Team " + data.Match_Data.Team_Number,
			"Switch_Teleop": data.Match_Data.Switch_Teleop,
			"Scale_Teleop": data.Match_Data.Scale_Teleop,
			"Vault": data.Match_Data.Vault,
			"Auton_Line": data.Match_Data.Auton_Line || 0,
			"Platform": data.Match_Data.Platform || 0,
			"Scale_Auton": data.Match_Data.Scale_Auton || 0,
			"Switch_Auton": data.Match_Data.Switch_Auton || 0,
			"Moved_Auton": data.Match_Data.Moved_Auton || 0,
			"Auton_Quest": data.Match_Data.Auton_Quest || 0,
			"Final_Boss": data.Match_Data.Final_Boss,
			"Climb_Teleop": (data.Match_Data.Climb_Teleop / 2 * 100) + "%, where 50% is trying to climb and 100% is climbing",
			"Speed": (data.Match_Data.Speed / 4 * 100) + "%, with 0% being VERY SLOW and 100% being SUPER FAST",
			"Foul_Points": data.Match_Data.Foul_Points,
			"Number_Of_Fouls": data.Match_Data.Number_Of_Fouls,
			"Match_Notes": data.Match_Data.Notes
		};
		if (data.Pit_Data){
			displays.Wheel_Base = data.Pit_Data.Wheel_Base.capitalize();
			displays.Wheel_Type = data.Pit_Data.Wheel_Type.capitalize();
			displays.Switch_Do = parseInt(data.Pit_Data.Switch_Do) == 1 ? "Yes" : "No";
			displays.Scale_Do = parseInt(data.Pit_Data.Scale_Do) == 1 ? "Yes" : "No";
			displays.Vault_Do = parseInt(data.Pit_Data.Vault_Do) == 1 ? "Yes" : "No";
			displays.Climb = parseInt(data.Pit_Data.Climb) == 1 ? "Yes" : "No";
			displays.Pit_Notes = data.Pit_Data.Notes;
			if (data.Pit_Data.Image)
				document.getElementById("Robot_Pic").innerHTML += "<img src=\"data:image/jpeg;base64," + data.Pit_Data.Image + "\" />";
		}
console.log(displays);
		displayData(displays);
	} else {
		alert("Sorry, only administrator accounts can access this feature.");
	}
}
