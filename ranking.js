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
		var tds = document.querySelectorAll("#ranks td");
		for (var i = 0; i < data.teams.length; i++){
			tds[(i*3)+1].innerHTML = data.teams[i].Team_Number;
			tds[(i*3)+2].innerHTML = data.teams[i].Weight;
		}
	} else {
		alert("Sorry, only administrator accounts can access this feature.");
	}
}
