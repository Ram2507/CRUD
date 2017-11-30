<html>
	<head>
		<title>View Products</title>
		<link href="css/style.css" rel="stylesheet">
		<script src="js/validate.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="header">
				<h1>Crud Operation</h1>
			</div>
			<div class="content">
				<h1>View Products</h1>
				<ul class="pmenu">
					<li><a href="add_product.php">Add Product</a></li>
					<li><a href="view_products.php">View Products</a></li>
				</ul>
				
				<?php 
				if(isset($_COOKIE['esuccess']))
				{
					echo $_COOKIE['esuccess'];
				}
				if(isset($_COOKIE['dsuccess']))
				{
					echo $_COOKIE['dsuccess'];
				}
				?>
				
				<?php 
					include("connection.php");
					$res=mysqli_query($con,"select *from products order by pid desc");
					if(mysqli_num_rows($res)>0)
					{
				?>
				
				
				<table>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Price</th>
						<th>Description</th>
						<th>Image</th>
						
						<th>Date</th>
						<th>Action</th>
					</tr>
					<?php 
					while($row=mysqli_fetch_assoc($res))
					{
						?>
							<tr>
								<td><?php echo $row['pid']?></td>
								<td><?php echo $row['pname']?></td>
								<td><?php echo $row['pprice']?></td>
								<td><?php echo substr($row['pdesc'],0,150)?>...</td>
								<td><img src="products/<?php echo $row['pimage']?>" height="50" width="50"></td>
								
								<td><?php echo $row['date']?></td>
								<td>
									<a href="edit_product.php?key=<?php echo $row['pid'];?>">Edit</a>
									<a href="delete_product.php?key=<?php echo $row['pid'] ?>">Delete</a>
								</td>
							</tr>
						<?php
					}
					
					?>
				</table>
				<?php 
					}
					else
					{
						echo "<p>Sorry! Products Not avaliable 
						pleas click here to <a href='add_product.php'>add</a> Product</p>";
					}
				?>
			</div>
			<div class="footer">
				<P>All &copy; Copy rights reserved</p>
			</div>
		</div>
	</body>
</html>