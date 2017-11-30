
function validateForm()
{
	if(document.getElementById("pname").value=="")
	{
		alert("Enter Product Name");
		return false;
	}
	if(document.getElementById("desc").value=="")
	{
		alert("Enter Description");
		return false;
	}
	if(document.getElementById("price").value=="")
	{
		alert("Enter Price");
		return false;
	}
	if(getFile(document.URL)!="edit_product.php")
	{
		if(document.getElementById("image").value=="")
		{
			alert("Please select a file");
			return false;
		}
	}
}

function getFile(url)
{
	var arr=url.split("/");
	var last=arr[arr.length-1];
	var f=last.split("?");
	return f[0];
	
}


