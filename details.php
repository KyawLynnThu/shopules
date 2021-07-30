<?php  
	require 'frontendheader.php';
	require 'connection.php';

	$id = $_GET['id'];

    $sql = "SELECT items.*, brands.name as bname, subcategories.id as s_id ,subcategories.name as sname, categories.name as cname FROM items
            JOIN brands
            ON brands.id = items.brand_id
            JOIN subcategories
            ON subcategories.id = items.subcategory_id
            JOIN categories
            ON categories.id = subcategories.category_id
            WHERE items.id=:value1";

    $statement = $pdo->prepare($sql);
    $statement->bindParam(':value1', $id);
    $statement->execute();

    $items = $statement->fetch(PDO::FETCH_ASSOC);
?>
	<!-- Subcategory Title -->
	<div class="jumbotron jumbotron-fluid subtitle">
  		<div class="container">
    		<h1 class="text-center text-white"><?= $items['codeno'] ?> </h1>
  		</div>
	</div>
	
	<!-- Content -->
	<div class="container">

		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb ">
		  	<ol class="breadcrumb bg-transparent">
		    	<li class="breadcrumb-item">
		    		<a href="index.php" class="text-decoration-none secondarycolor"> Home </a>
		    	</li>
		    	<li class="breadcrumb-item">
		    		<a href="#" class="text-decoration-none secondarycolor"> <?= $items['cname'] ?> </a>
		    	</li>
		    	<li class="breadcrumb-item">
		    		<a href="#" class="text-decoration-none secondarycolor"> <?= $items['bname'] ?> </a>
		    	</li>
		    	<li class="breadcrumb-item active" aria-current="page">
					<?= $items['sname'] ?>
		    	</li>
		  	</ol>
		</nav>

		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
				<img src="<?= $items['photo'] ?> " class="img-fluid" style="width: 400px; height: 350px;">
			</div>	


			<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-12">
				
				<h4> <?= $items['name'] ?>  </h4>

				<div class="star-rating">
					<ul class="list-inline">
						<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
						<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
						<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
						<li class="list-inline-item"><i class='bx bxs-star' ></i></li>
						<li class="list-inline-item"><i class='bx bxs-star-half' ></i></li>
					</ul>
				</div>

				<p>
					<?= $items['description'] ?> 
				</p>

				<p> 
					<span class="text-uppercase "> Current Price : </span>
					<?php 
		                if($items['discount']){
					?>
			            <span class="maincolor ml-3 font-weight-bolder"> <?= $items['discount'] ?> MMK </span>
		            <?php } else { ?>
		                <span class="maincolor ml-3 font-weight-bolder"> <?= $items['price'] ?>  MMK</span>
		            <?php } ?>
					
				</p>

				<p> 
					<span class="text-uppercase "> Brand : </span>
					<span class="ml-3"> <a href="" class="text-decoration-none text-muted"> <?= $items['bname'] ?>  </a> </span>
				</p>

				<a href="#" class="addtocartBtn text-decoration-none" style="background-color: #ef3b68; color: #ff"
				data-id="<?= $items['id'] ?>" 
				data-name="<?= $items['name'] ?>" 
				data-price="<?= $items['price'] ?>" 
				data-discount="<?= $items['discount'] ?>" 
				data-photo="<?= $items['photo'] ?>" 
				data-codeno="<?= $items['codeno'] ?>">Add to Cart</a>
				
			</div>
		</div>

		<div class="row mt-5">
			<div class="col-12">
				<h3> Related Item </h3>
				<hr>
			</div>
			
			<?php

				$sql = 'SELECT * FROM items WHERE items.subcategory_id = :value1 order BY rand() LIMIT 4';
				$statement = $pdo->prepare($sql);
				$statement->bindParam(':value1', $items['s_id']);
				$statement->execute();

				$related_items = $statement->fetchAll();

		        foreach($related_items as $ritem){
		        	$rid = $ritem['id'];
		        	$rphoto = $ritem['photo'];
		    ?>

			<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
				<a href="details.php?id=<?= $rid ?>">
					<img src="<?= $rphoto; ?>" class="img-fluid" style="width: 250px; height: 250px;">
				</a>
			</div>
			<?php } ?>

		</div>

		
	</div>

<?php 
	require 'frontendfooter.php';
?>