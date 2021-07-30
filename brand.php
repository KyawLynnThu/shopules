<?php  
	require 'frontendheader.php';
	require 'connection.php';

	$bid = $_GET['id'];

	$sql = "SELECT * FROM brands
            WHERE brands.id=:value1";

    $statement = $pdo->prepare($sql);
    $statement->bindParam(':value1', $bid);
    $statement->execute();

    $brands = $statement->fetch(PDO::FETCH_ASSOC);

    $sql = "SELECT items.*, subcategories.name as sname, subcategories.id as sid FROM items
    		JOIN subcategories
    		ON subcategories.id = items.subcategory_id
    		WHERE items.brand_id = :value1
    		GROUP BY items.subcategory_id";
    // $sql = "SELECT items.*, subcategories.name as sname FROM items
    // 		JOIN subcategories
    // 		ON subcategories.id = items.subcategory_id
    // 		WHERE items.brand_id = :value1";
   	$statement = $pdo->prepare($sql);
   	$statement->bindParam(':value1', $bid);
   	$statement->execute();

   	$items = $statement->fetchAll();

?>
	<!-- Subcategory Title -->
	<div class="jumbotron jumbotron-fluid subtitle">
  		<div class="container">
    		<h1 class="text-center text-white" style="text-transform: uppercase;"> <?= $brands['name'] ?> </h1>
  		</div>
	</div>
	
	<!-- Content -->
	<div class="container mt-5">
		<?php if($items) { ?>
				<?php 
            		foreach($items as $sub){
            			$sid = $sub['sid'];
            			$sname = $sub['sname'];
            	?>
		<div class="row mt-5">
			
            <div class="col-12">
            	
                <div class="bbb_viewed_title_container">
                    <h3 class="bbb_viewed_title"> <?= $sname; ?></h3>
                    <div class="bbb_viewed_nav_container">
                        <div class="bbb_viewed_nav bbb_viewed_prev"><i class="icofont-rounded-left bg-danger"></i></div>
                        <div class="bbb_viewed_nav bbb_viewed_next"><i class="icofont-rounded-right bg-danger"></i></div>
                    </div>
                </div>
            	
                <div class="bbb_viewed_slider_container">
                    <div class="owl-carousel owl-theme bbb_viewed_slider">
                    	<?php

                    		$sql = "SELECT items.*, brands.id as bid, brands.name as bname FROM items
                    				JOIN brands
                    				ON brands.id = items.brand_id
                    				JOIN subcategories
                    				ON subcategories.id = items.subcategory_id
                    				WHERE brands.id =:value1
                    				AND items.subcategory_id = :value2
                    				";

                    		$statement = $pdo->prepare($sql);
                    		$statement->bindParam(':value1', $bid);
                    		$statement->bindParam(':value2', $sid);
                    		$statement->execute();

                    		$branditems = $statement->fetchAll();
                    		// var_dump($branditems);
                    		// die();

				    		foreach($branditems as $bitem){

					    		$b_id = $bitem['id'];
						        $b_name = $bitem['name'];
						        $b_price = $bitem['price'];
						        $b_discount = $bitem['discount'];
						        $b_photo = $bitem['photo'];
						        $b_codeno = $bitem['codeno'];
						?>
					   	<div class="owl-item">
					        <div class="item discount d-flex flex-column align-items-center justify-content-center text-center">
					            <div class="pad20">
					        		<a href="details.php?id=<?= $b_id ?>"><img src="<?= $b_photo ?>" class="img-fluid" style="height: 150px; width: 200px;"></a>
					        		<br>
					            	<p class="item-price"><?= $b_name ?></p>
					            	<p class="item-price">
					            		<?php 
		                        		if($b_discount){
			                        	?>
				                        	<strike> <?= $b_price ?> Ks </strike> 
		                        			<span class="d-block"> <?= $b_discount ?> Ks</span>

			                        	<?php } else{ ?>
			                        		<span class="d-block"> <?= $b_price ?> Ks</span>
			                        	<?php } ?>
					            	</p>

					                <div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
											<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
											<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
											<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
											<li class="list-inline-item"><i class='bx bxs-star-half' ></i></li>
										</ul>
									</div>

									<a href="#" class="addtocartBtn text-decoration-none" style="background-color: #ef3b68; color: #ff"
									data-id="<?= $b_id ?>" data-name="<?= $b_name ?>" 
									data-price="<?= $b_price ?>" 
									data-discount="<?= $b_discount ?>" 
									data-photo="<?= $b_photo ?>" 
									data-codeno="<?= $b_codeno ?>">
										Add to Cart
									</a>
					        	</div>
					        </div>
					    </div>
					    <?php } ?>

					</div>
                </div>
            </div>
            
        </div>
<?php } ?>
        <?php } else{ ?>
				<h2 class="card-title text-truncate" style="text-align: center;">❕ NO ITEMS AVAILABLE</h2>
			<?php 	} ?>
	</div>

<?php  
	require 'frontendfooter.php';

?>