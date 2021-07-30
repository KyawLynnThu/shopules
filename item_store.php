<?php  

	require 'connection.php';

	$photo = $_FILES['photo'];
	$source_dir = 'image/item/';

	$filename = mt_rand(100000,999999);
	$file_array = explode('.', $photo['name']);
	$file_exe = $file_array[1]; 

	$filepath = $source_dir.$filename.'.'.$file_exe;
	//filepath = $souce>cat'.'jpg 

	move_uploaded_file($photo['tmp_name'], $filepath);

	$code = $_POST['code'];
	$name = $_POST['name'];
	$price = $_POST['price'];
	$discount = $_POST['discount'];
	$description = $_POST['description'];
	$brand_id = $_POST['brand_id'];
	$subcategory_id = $_POST['subcategory_id'];

	$sql = "INSERT into items (codeno,name,photo,price,discount,description,brand_id,subcategory_id) VALUES (:v1, :v2, :v3, :v4, :v5, :v6, :v7, :v8)";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $code);
	$statement->bindParam(':v2', $name);
	$statement->bindParam(':v3', $filepath);
	$statement->bindParam(':v4', $price);
	$statement->bindParam(':v5', $discount);
	$statement->bindParam(':v6', $description);
	$statement->bindParam(':v7', $brand_id);
	$statement->bindParam(':v8', $subcategory_id);
	$statement->execute();

	header('location:item_list.php');



?>