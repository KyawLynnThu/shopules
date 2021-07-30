<?php  
	require 'connection.php';

	$id = $_POST['id'];

	$sql = 'DELETE FROM items WHERE id=:value1';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $id);
	$statement->execute();

	header('location: item_list.php');
?>