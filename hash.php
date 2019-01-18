<!DOCTYPE html>
<html>
<body>
<form action="" method="POST">
<input type="password" placeholder="Password" name="password" />
<input type="submit" value="Hash" />
</form>
<?php
	echo password_hash($_POST['password'], PASSWORD_DEFAULT);
	//Admin username: admin
	//Admin password: Prateek's Kahoot username ;)
	//Standard username: robo
	//Standard password: the path from the South to North building
?>
</body>
</html>