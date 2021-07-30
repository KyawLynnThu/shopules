<?php  

	require 'connection.php';

	$name = $_POST['name'];
	$category_id = $_POST['category_id'];


	$sql = "INSERT into subcategories (name,category_id) VALUES (:v1, :v2)";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $name);
	$statement->bindParam(':v2', $category_id);
	$statement->execute();

	header('location:subcategory_list.php');
?>