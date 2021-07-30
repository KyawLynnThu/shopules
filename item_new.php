<?php  
	require 'backendheader.php';

    require 'connection.php';

    $sql = "SELECT * FROM brands ORDER BY name ASC";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    $brands = $statement->fetchAll();

    $sql = "SELECT * FROM subcategories ORDER BY name ASC";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    $subcategories = $statement->fetchAll();

?>
	<div class="app-title">
                <div>
                    <h1> <i class="icofont-list"></i> Item Form </h1>
                </div>
                <ul class="app-breadcrumb breadcrumb side">
                    <a href="item_list.php" class="btn btn-outline-primary">
                        <i class="icofont-double-left"></i>
                    </a>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <form action="item_store.php" method="POST" enctype="multipart/form-data">
                                
                                <div class="form-group row">
                                    <label for="photo_id" class="col-sm-2 col-form-label"> Photo </label>
                                    <div class="col-sm-10">
                                      <input type="file" id="photo_id" name="photo">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="name_id" class="col-sm-2 col-form-label"> Code Number </label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" id="code_no" name="code">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="name_id" class="col-sm-2 col-form-label"> Name </label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" id="name_id" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="price" class="col-sm-2 col-form-label"> Price </label>

                                    <div class="col-sm-10">
                                        <nav>
                                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Unit Price</a>
                                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Discout</a>
                                            </div>
                                        </nav>
                                        <br>
                                        <div class="tab-content" id="nav-tabContent">
                                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                                <input type="text" class="form-control" name="price">
                                            </div>
                                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                <input type="text" class="form-control" name="discount">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="exampleTextarea" class="col-sm-2 col-form-label">Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="exampleTextarea" rows="3" name="description"></textarea>
                                    </div>
                                </div>

                                 <div class="form-group row">
                                    <label for="category" class="col-sm-2 col-form-label ">Brand</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="brand_id" id="">
                                            <?php 
                                                foreach ($brands as $brand) {
                                                    $b_id = $brand['id'];
                                                    $b_name = $brand['name'];
                                            ?>
                                            <option value="<?= $b_id; ?>"><?= $b_name; ?></option>

                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                 <div class="form-group row">
                                    <label for="category" class="col-sm-2 col-form-label ">Subcategory</label>
                                    <div class="col-sm-10">
                                       <select class="form-control" name="subcategory_id" id="">
                                            <?php 
                                                foreach ($subcategories as $subcategory) {
                                                    $s_id = $subcategory['id'];
                                                    $s_name = $subcategory['name'];
                                            ?>
                                            <option value="<?= $s_id; ?>"><?= $s_name; ?></option>

                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="icofont-save"></i>
                                            Save
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