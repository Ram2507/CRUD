<html>
	<head>
		<title>Edit Product</title>
		<link href="css/style.css" rel="stylesheet">
		<script src="js/validate.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="header">
				<h1>Crud Operation</h1>
			</div>
			<div class="content">
				<h1>Edit Product</h1>
				<ul class="pmenu">
					<li><a href="add_product.php">Add Product</a></li>
					<li><a href="view_products.php">View Products</a></li>
				</ul>
				
				<?php 
				include("connection.php");
				if(isset($_REQUEST['key']) && !empty($_REQUEST['key']))
				{
					$id=$_REQUEST['key'];
					$res=mysqli_query($con,"select *from products where pid=$id");
					$row=mysqli_fetch_assoc($res);
				}
				else
				{
					echo "<p class='wrong'>Sorry! Wrong window</p>";
					exit();
				}
				
				
				if(isset($_POST['update']))
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
						$filename=$row['pimage'];
					}
					
					mysqli_query($con,"update products set
					pname='$pname',
					pdesc='$pdesc',
					pprice='$pprice',
					pimage='$filename' where pid=$id");
					if(mysqli_affected_rows($con)==1)
					{
						setcookie("esuccess","<P class='success'>Product Updated Successfully</p>",time()+3);
						header("Location:view_products.php");
					}
					else
					{
						echo mysqli_error($con);
					}
				}
				
				
				?>
				
				<form onsubmit="return validateForm()" method="post" action="" enctype="multipart/form-data">
					<table>
						<tr>
							<td>Product Name</td>
							<td><input value="<?php echo $row['pname']?>" type="text" name="pname" id="pname"></td>
						</tr>
						<tr>
							<td>Product Description</td>
							<td><textarea name="desc" id="desc"><?php echo $row['pdesc']?></textarea></td>
						</tr>
						<tr>
							<td>Product Price</td>
							<td><input type="text" name="price" id="price" value="<?php echo $row['pprice']?>"></td>
						</tr>
						<tr>
							<td>Product Image</td>
							<td><input  type="file" name="image" id="image">
							<?php //if($row['pimage']!=""){ ?>
							<img src="products/<?php echo $row['pimage'] ?>" height="40" width="40">
							<?php //}?>
							</td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" name="update" value="Update Product"></td>
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