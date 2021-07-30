<?php 
    require 'backendheader.php';

    require 'connection.php';

    $sql = "SELECT items.*, brands.id as b_id, brands.name as bname FROM items
            INNER JOIN brands
            ON brands.id = items.brand_id
            ORDER BY name";

    $statement = $pdo->prepare($sql);
    $statement->execute();

    $items = $statement->fetchAll();

?>
            <div class="app-title">
                <div>
                    <h1> <i class="icofont-package"></i> Item Lists</h1>
                </div>
                <ul class="app-breadcrumb breadcrumb side">
                    <a href="item_new.php" class="btn btn-outline-primary">
                        <i class="icofont-plus"></i>
                    </a>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="sampleTable">
                                    <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Brand</th>
                                          <th>Price</th>
                                          <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <?php 
                                            $i = 1; 
                                            foreach ($items as $item) {
                                                $id = $item['id'];
                                                $photo = $item['photo'];
                                                $item_name = $item['name'];
                                                $code = $item['codeno'];
                                                $brand_name = $item['bname'];
                                                $price = $item['price'];
                                                $discount = $item['discount'];
                                        ?>
                                        <tr>
                                            <td> <?= $i++  ?>. </td>
                                            <td>
                                                
                                                <?php if($photo){ ?>
                                                    <div class="mr-3">
                                                        <img src="<?= $photo; ?>" alt="user" class="rounded-circle" width="50" height="45" align="left" /> 
                                                        <b><?= $code; ?></b><br>
                                                        <small><?= $item_name; ?></small>
                                                    </div>
                                                <?php } ?>
                                                
                                            </td>
                                            <td> <?= $brand_name; ?></td>
                                            <td> 
                                                <?php 
                                                    if($discount){
                                                ?>
                                                    <span class="d-block"> <?= $discount ?> Ks</span>
                                                    <strike> <?= $price ?> Ks </strike> 

                                                <?php } else{ ?>
                                                    <span class="d-block"> <?= $price ?> Ks</span>
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <a href="item_edit.php?id=<?= $id ?>" class="btn btn-warning">
                                                    <i class="icofont-ui-settings"></i>
                                                </a>

                                                <form class="d-inline-block" onsubmit="return confirm('Are you sure want to delete?')" action="item_delete.php" method="POST">

                                                    <input type="hidden" name="id" value="<?= $id ?>">
                                                    <button class="btn btn-outline-danger">
                                                        <i class="icofont-close"></i>
                                                    </button>
                                                    
                                                </form>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php  
    require 'backendfooter.php';
?>