<?php  
	require 'backendheader.php';
    require 'connection.php';

    $id = $_GET['id'];

    $sql = "SELECT subcategories.*, categories.name as cname FROM subcategories
            JOIN categories
            On categories.id = subcategories.category_id
            WHERE subcategories.id=:value1";
    $statement = $pdo->prepare($sql);
    $statement->bindParam(':value1', $id);
    $statement->execute();

    $subcategories = $statement->fetch(PDO::FETCH_ASSOC);

    $sql = "SELECT * FROM categories ORDER BY name ASC";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    $categories = $statement->fetchAll();

?>
	<div class="app-title">
                <div>
                    <h1> <i class="icofont-list"></i> Subcategory Edit Form </h1>
                </div>
                <ul class="app-breadcrumb breadcrumb side">
                    <a href="subcategory_list.php" class="btn btn-outline-primary">
                        <i class="icofont-double-left"></i>
                    </a>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <form action="subcategory_update.php" method="POST">
                                <input type="hidden" name="id" value="<?= $subcategories['id'] ?>" >
                                <div class="form-group row">
                                    <label for="name_id" class="col-sm-2 col-form-label"> Name </label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" id="" name="name" value="<?= $subcategories['name'] ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="category" class="col-sm-2 col-form-label ">Category</label>
                                    <div class="col-sm-10">

                                        <select class="form-control" name="category_id" id="" value="<?= $subcategories['category_id'] ?>">
                                            <option value="<?= $subcategories['category_id'] ?>"><?= $subcategories['cname'] ?></option>    
                                            <?php 
                                                foreach ($categories as $category) {
                                                    $id = $category['id'];
                                                    $name = $category['name'];
                                            ?>
                                            <option value="<?= $id ?>"><?= $name ?></option>   

                                            <?php } ?>

                                            
                                        </select>
                                        
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="icofont-save"></i>
                                            Update
                                        </button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>


<?php  
	require 'backendfooter.php';

?>