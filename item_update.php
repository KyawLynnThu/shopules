<?php 
  
  require 'connection.php';

  $name = $_POST['name'];
  $photo = $_FILES['photo'];
  $id = $_POST['id'];
  $oldphoto = $_POST['oldphoto'];
  $code = $_POST['code'];
  $price = $_POST['price'];
  $discount = $_POST['discount'];
  $description = $_POST['description'];
  $brand_id = $_POST['brand_id'];
  $subcat_id = $_POST['subcategory_id'];

  $source_dir = 'image/item/';

  if (isset($photo) && $photo['size']>0) {
    $filename = mt_rand(100000,999999);
    $file_array = explode('.', $photo['name']);
    $file_exe = $file_array[1];

    $filepath = $source_dir.$filename.'.'.$file_exe;
    move_uploaded_file($photo['tmp_name'], $filepath);

    unlink($oldphoto);

  }else{
    $filepath = $oldphoto;
  }
  
  $sql = "UPDATE items SET codeno=:value1,name=:value2,photo=:value3,price=:value4,discount=:value5,description=:value6,brand_id=:value7,subcategory_id=:value8 WHERE id=:value9";
  $statement = $pdo->prepare($sql);
  $statement->bindParam(':value1', $code);
  $statement->bindParam(':value2', $name);
  $statement->bindParam(':value3', $filepath);
  $statement->bindParam(':value4', $price);
  $statement->bindParam(':value5', $discount);
  $statement->bindParam(':value6', $description);
  $statement->bindParam(':value7', $brand_id);
  $statement->bindParam(':value8', $subcat_id);
  $statement->bindParam(':value9', $id);
  $statement->execute();

  header('location:item_list.php');

?>

