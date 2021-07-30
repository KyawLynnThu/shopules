<?php 

	// $dbname = 'mysql:host=localhost;dbname=bc21_me';
	// $user = 'root';
	// $password = '';
	// $pdo = new PDO($dbname, $user, $password);


?>
<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
  $pdo = new PDO("mysql:host=$servername;dbname=bc21_me", $username, $password);
  // set the PDO error mode to exception
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  // echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>
