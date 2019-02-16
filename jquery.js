var theData = {};
var red1;
var red2;
var red3;
var blue1;
var blue2;
var blue3;
var theTeams = [];
var matchArray = [];
var qualArray = [];

$.ajax({
    url: 'https://www.thebluealliance.com/api/v3/event/2018njski/matches',
    headers: {
        'X-TBA-Auth-Key':'H5AQHQxA1GrZafznfxPvnhfUgeAySCjx6GMQYmV42WpkoURDx4asMQvO8I6abvz8'
    },
    method: 'GET',
    dataType: 'json',
    success: function(data){
      theData = data; 

      for (var i = 0; i < theData.length; i++) {
        if (theData[i].comp_level == "qm") {
            qualArray.push(theData[i]);
        }
      }
    }
});

$.ajax({
    url: 'https://www.thebluealliance.com/api/v3/event/2018njski/teams/keys',
    headers: {
        'X-TBA-Auth-Key':'H5AQHQxA1GrZafznfxPvnhfUgeAySCjx6GMQYmV42WpkoURDx4asMQvO8I6abvz8'
    },
    method: 'GET',
    dataType: 'json',
    success: function(data){
      theTeams = data; 
  } 
});