<?php  
	require 'frontendheader.php';
	require 'connection.php';

	$id = $_GET['id'];

	$sql = "SELECT subcategories.*, categories.id as cid, categories.name as cname FROM subcategories
			JOIN categories
			On categories.id = subcategories.category_id
            WHERE subcategories.id = :value1";

    $statement = $pdo->prepare($sql);
    $statement->bindParam(':value1', $id);
    $statement->execute();

    $subcategories = $statement->fetch(PDO::FETCH_ASSOC);

    $sql = "SELECT * FROM items
    		WHERE items.subcategory_id = :value1";
   	$statement = $pdo->prepare($sql);
   	$statement->bindParam(':value1', $id);
   	$statement->execute();

   	$items = $statement->fetchAll();

?>
	<!-- Subcategory Title -->
	<div class="jumbotron jumbotron-fluid subtitle">
  		<div class="container">
    		<h1 class="text-center text-white" style="text-transform: uppercase;"><?= $subcategories['name'] ?></h1>
  		</div>
	</div>
	
	<!-- Content -->
	<div class="container">

		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb ">
		  	<ol class="breadcrumb bg-transparent">
		    	<li class="breadcrumb-item">
		    		<a href="index.php" class="text-decoration-none secondarycolor"> HOME </a>
		    	</li>
		    	<li class="breadcrumb-item">
		    		<a href="index.php" class="text-decoration-none secondarycolor"><?= $subcategories['cname'] ?></a>
		    	</li>
		    	<li class="breadcrumb-item active" aria-current="page">
					<a href="#" class="text-decoration-none secondarycolor" style="text-transform: uppercase;"><?= $subcategories['name'] ?></a>
		    	</li>
		  	</ol>
		</nav>

		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
				<ul class="list-group">
					<?php
						$sql = "SELECT * FROM subcategories 
								WHERE subcategories.category_id = :value1";
					   	$statement = $pdo->prepare($sql);
					   	$statement->bindParam(':value1' , $subcategories['category_id']);
					    $statement->execute(); 

					    $subcategory = $statement->fetchAll();

						foreach($subcategory as $sub){
							$s_id = $sub['id'];
							$subcat = $sub['name'];
					?>
				  	<li class="list-group-item">
				  		<a href="subcategory.php?id=<?= $s_id ?>" class="text-decoration-none secondarycolor"> <?= $subcat; ?> </a>
				  	</li>
				  	<?php } ?>
				</ul>
			</div>	

			<?php if($items){ ?>
			<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-12">
				<div class="row">
					<?php 
						foreach($items as$item){ 

							$sub_id = $item['id'];
							$sub_photo = $item['photo'];
							$sub_name = $item['name'];
							$sub_price = $item['price'];
		        			$sub_discount = $item['discount'];
		       				$sub_photo = $item['photo'];
		        			$sub_codeno = $item['codeno'];
					?>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
						<div class="card pad20 mb-3">
						  	<div>
						  		<a href="details.php?id=<?= $sub_id ?>">
						  		<img src="<?= $sub_photo ?>" style="height: 150px; width: 200px; margin-left: 10px; margin-right: 10px; margin-top: 10px;">
						  	</a>
						  	</div>
						  	
						  	<div class="card-body text-center">
						    	<h5 class="card-title text-truncate"><?= $sub_name ?></h5>
						    	
						    	<p class="item-price">
		                        	<?php 
		                        		if($sub_discount){
			                        	?>
				                        	<strike> <?= $sub_price ?> Ks </strike> 
		                        			<span class="d-block"> <?= $sub_discount ?> Ks</span>

			                        	<?php } else{ ?>
			                        		<span class="d-block"> <?= $sub_price ?> Ks</span>
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
									data-id="<?= $sub_id ?>" data-name="<?= $sub_name ?>" 
									data-price="<?= $sub_price ?>" 
									data-discount="<?= $sub_discount ?>" 
									data-photo="<?= $sub_photo ?>" 
									data-codeno="<?= $sub_codeno ?>">Add to Cart</a>
						  	</div>
						</div>
					</div>
					<?php } ?>
				</div>
				

				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-end">
					    <li class="page-item disabled">
					      	<a class="page-link" href="#" tabindex="-1" aria-disabled="true"><i class="icofont-rounded-left"></i>
					      	</a>
					    </li>
					    <li class="page-item active">
					    	<a class="page-link" href="#">1</a>
					    </li>
					    <li class="page-item">
					    	<a class="page-link" href="#">2</a>
					    </li>
					    <li class="page-item">
					    	<a class="page-link" href="#">3</a>
					    </li>
					    <li class="page-item">
					      	<a class="page-link" href="#">
					      		<i class="icofont-rounded-right"></i>
					      	</a>
					    </li>
					</ul>
				</nav>
			</div>
			<?php } else{ ?>
				<h1 class="card-title text-truncate" style="margin : 0 auto;">❕️ NO ITEMS AVAILABLE</h1>

			<?php 	} ?>
		</div>

		
	</div>
<?php  
	require 'frontendfooter.php';
?>