<?php  
	require 'frontendheader.php';

	require 'connection.php';

	$sql = 'SELECT * FROM items WHERE discount != "" LIMIT 8';
	$statement = $pdo->prepare($sql);
	$statement->execute();

	$discountitems = $statement->fetchAll();
?>
	<!-- Subcategory Title -->
	<div class="jumbotron jumbotron-fluid subtitle">
  		<div class="container">
    		<h1 class="text-center text-white"> Promotion Item </h1>
  		</div>
	</div>
	
	<!-- Content -->
	<div class="container mt-5">


		<div class="row">
            <div class="col">
                <div class="bbb_viewed_title_container">
                    <h3 class="bbb_viewed_title"> Promotion Item </h3>
                    <div class="bbb_viewed_nav_container">
                        <div class="bbb_viewed_nav bbb_viewed_prev"><i class="icofont-rounded-left bg-danger"></i></div>
                        <div class="bbb_viewed_nav bbb_viewed_next"><i class="icofont-rounded-right bg-danger"></i></div>
                    </div>
                </div>
                <div class="bbb_viewed_slider_container">
                    <div class="owl-carousel owl-theme bbb_viewed_slider">
                    	<?php 
		            	
		            		foreach($discountitems as $discountitem){

		            		$di_id = $discountitem['id'];
		            		$di_name = $discountitem['name'];

		            		$di_price = $discountitem['price'];
		            		$di_discount = $discountitem['discount'];

		            		$di_photo = $discountitem['photo'];

		            		$di_codeno = $discountitem['codeno'];

		            	?>
					    <div class="owl-item">
					        <div class="item discount d-flex flex-column align-items-center justify-content-center text-center">
					            <div class="pad20">
					        		<a href="details.php?id=<?= $di_id ?>"><img src="<?= $di_photo ?>" class="img-fluid" style="height: 150px; width: 200px;"></a>
					            	<p class="text-truncate"><?= $di_name ?></p>
					            	<p class="item-price">
					            		<strike> <?= $di_price ?> Ks </strike> 
		                        	<span class="d-block"> <?= $di_discount ?> Ks</span>
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
									data-id="<?= $di_id ?>" data-name="<?= $di_name ?>" 
									data-price="<?= $di_price ?>" 
									data-discount="<?= $di_discount ?>" 
									data-photo="<?= $di_photo ?>" 
									data-codeno="<?= $di_codeno ?>">
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

	</div>
<?php  
	require 'frontendfooter.php';
?>