<?php  
	require 'connection.php';

	$name = $_POST['name'];
	$photo = $_FILES['photo'];

	$source_dir = 'image/brand/';

	$filename = mt_rand(100000,999999);
	$file_array = explode('.', $photo['name']);
	$file_exe = $file_array[1]; 

	$filepath = $source_dir.$filename.'.'.$file_exe;
	//filepath = $souce>cat'.'jpg 

	move_uploaded_file($photo['tmp_name'], $filepath);

	$sql = "INSERT into brands (name,photo) VALUES (:name, :photo)";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':name', $name);
	$statement->bindParam(':photo', $filepath);
	$statement->execute();

	header('location:brand_list.php');
?>