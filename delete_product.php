<?php 
include("connection.php");
if(isset($_REQUEST['key']) && !empty($_REQUEST['key']))
{
	$id=$_REQUEST['key'];
	mysqli_query($con,"delete from products where pid=$id");
	if(mysqli_affected_rows($con)==1)
	{
		setcookie("dsuccess","<P class='error'>Product Deleted Successfully</p>",time()+3);
		header("Location:view_products.php");
	}
	else
	{
		echo mysqli_error($con);
	}
	
}
else
{
	echo "<p class='wrong'>Sorry! Wrong window</p>";
	exit();
}

?>