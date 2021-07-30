<?php 
  
  require 'connection.php';

  $id = $_POST['id'];
  $name = $_POST['name'];
  $cat_id = $_POST['category_id'];
  
  
  $sql = "UPDATE subcategories SET name=:value1,category_id=:value2 WHERE id=:value3";
  $statement = $pdo->prepare($sql);
  $statement->bindParam(':value1', $name);
  $statement->bindParam(':value2', $cat_id);
  $statement->bindParam(':value3', $id);

  $statement->execute();

  header('location:subcategory_list.php');

?>