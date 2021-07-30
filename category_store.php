<?php  

	require 'connection.php';

	$name = $_POST['name'];
	$photo = $_FILES['photo'];

	$source_dir = 'image/category/';

	$filename = mt_rand(100000,999999);
	$file_array = explode('.', $photo['name']);
	$file_exe = $file_array[1]; 

	$filepath = $source_dir.$filename.'.'.$file_exe;
	//filepath = $souce>cat'.'jpg 

	move_uploaded_file($photo['tmp_name'], $filepath);

	$sql = "INSERT into categories (name,logo) VALUES (:name, :logo)";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':name', $name);
	$statement->bindParam(':logo', $filepath);
	$statement->execute();

	header('location:category_list.php');



?>