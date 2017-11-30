<html>
	<head>
		<title>Add Product</title>
		<link href="css/style.css" rel="stylesheet">
		<script src="js/validate.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="header">
				<h1>Crud Operation</h1>
			</div>
			<div class="content">
				<h1>Add Product</h1>
				<ul class="pmenu">
					<li><a href="add_product.php">Add Product</a></li>
					<li><a href="view_products.php">View Products</a></li>
				</ul>
				<?php 
				if(isset($_COOKIE['success']))
				{
					echo "<P>".$_COOKIE['success']."</p>";
				}
				
				?>
				
				
				<?php 
					include("connection.php");
					if(isset($_POST['add']))
					{
						$pname=$_POST['pname'];
						$pdesc=$_POST['desc'];
						$pprice=$_POST['price'];
						if(is_uploaded_file($_FILES['image']['tmp_name']))
						{
							$filename=$_FILES['image']['name'];
							move_uploaded_file($_FILES['image']['tmp_name'],"products/$filename");
						}
						else
						{
							$filename="";
						}
						mysqli_query($con,"insert into products
						(pname,pdesc,pprice,pimage,date)
						values('$pname','$pdesc','$pprice',
						'$filename',now())");
						if(mysqli_affected_rows($con)==1)
						{
							setcookie("success","<p class='success'>Product Added Successfully</p>",time()+3);
							header("Location:add_product.php");
						}
					}
				
				?>
				
				
				<form onsubmit="return validateForm()" method="post" action="" enctype="multipart/form-data">
					<table>
						<tr>
							<td>Product Name</td>
							<td><input type="text" name="pname" id="pname"></td>
						</tr>
						<tr>
							<td>Product Description</td>
							<td><textarea name="desc" id="desc"></textarea></td>
						</tr>
						<tr>
							<td>Product Price</td>
							<td><input type="text" name="price" id="price"></td>
						</tr>
						<tr>
							<td>Product Image</td>
							<td><input type="file" name="image" id="image"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" name="add" value="Add Product"></td>
						</tr>
					</table>
				</form>
				
			</div>
			<div class="footer">
				<P>All &copy; Copy rights reserved</p>
			</div>
		</div>
	</body>
</html>