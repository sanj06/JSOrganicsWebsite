<!DOCTYPE html>
<html>
<head>
	<title>JS Organics</title>
	<style type="text/css">
		table,td{
			
			text-align: center;
		}
		

		a:link, a:visited {
			  background-color: white;
			  color: gray;
			  padding: 15px 25px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
		}

		 a:active {
  			background-color: white;
		}
		a:hover{
			color: white;
			background-color: gray;
		}

		* {box-sizing:border-box}

		/* Slideshow container */
		.slideshow-container {
		  max-width: 1000px;
		  position: relative;
		  margin: auto;
		}

		/* Hide the images by default */
		.mySlides {
		  display: none;
		}

				
		/* On hover, add a black background color with a little bit see-through */
		.prev:hover, .next:hover {
		  background-color: rgba(0,0,0,0.8);
		}

		/* Caption text */
		.text {
		  color: #f2f2f2;
		  font-size: 30px;
		  padding: 8px 12px;
		  position: absolute;
		  bottom: 8px;
		  width: 100%;
		  text-align: center;
		  font-family:Comic Sans MS;
		}

		
		.active, .dot:hover {
		  background-color: #717171;
		}

		/* Fading animation */
		.fade {
		  -webkit-animation-name: fade;
		  -webkit-animation-duration: 1.5s;
		  animation-name: fade;
		  animation-duration: 1.5s;
		}

		@-webkit-keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}

		@keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}
		.form-popup {
			  display: none;
			  position: fixed;
			  bottom: 50px;
			  right: 350px;
			 /*width: 500px;*/
			  /*border: 3px #d5d5f6 ;*/
			  margin: 100px;
			  padding : 3px;
			 
			  background-color: gray;

		}

		#AddProductForm{
			display: none;
			  position: fixed;
			  bottom: 20px;
			  right: 350px;
			 /*width: 500px;*/
			  /*border: 3px #d5d5f6 ;*/
			  margin: 100px;
			  padding : 3px;
			 overflow: auto;
			  background-color: gray;
			  height: 500px;

		}
		 
		 #form-container{
		  max-width: 500px;
		  padding: 5px;
		  background-color: white;
		}

		#offer_name, #offer_image {
		  width: 100%;
		  padding: 10px;
		  margin: 3px;
		  border: none;
		  background-color: #d5d5f6;
		  opacity: 0.8;
		  color: gray;
		}

		.in{

		  width: 100%;
		  padding: 10px;
		  margin: 3px;
		  border: none;
		  background-color: #d5d5f6;
		  opacity: 0.8;
		  color: gray;
		
		}

		.in:focus{
			background-color: #ddd;
		}


		#offer_image:focus, #offer_name:focus {
		  background-color: #ddd;
		  outline: none;
		  opacity: 1;
		}

		.btn {
		  background-color: #d5d5f6 ;	
		  color: #595959;
		  padding: 10px 20px;
		  border: none;
		  cursor: pointer;
		  
		  margin-bottom:10px;
		  opacity: 0.8;
		  text-align: center;
		}
		.btn:hover {
		  background-color: #ddd;
		  opacity: 1;
		}

		#formtable {
			
			
			/*border: 2px solid grey;*/
			padding: 3px;
	
			background-color: white;
			width: 400px;
			
		}

		#Follow{
			background-color: #595959;
			color: white;
			font-family:Comic Sans MS;
			font-size: 30px
		}

			.zoom:hover {
  				transform: scale(1.25);

		}

	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body onload="loadDoc('showproductlistadmin.jsp', showProducts); loadDoc('showoffers.jsp', showOffers);">
	<table cellpadding="10px" cellspacing="0" style="width:100%; border:5px solid black; border-bottom:0px ">
		<tr style="height: 150px">
			<td style="width:30%"> <a href="#products_anchor"> <h4 style="font-family:Comic Sans MS; font-size: 25px" >Products </h4></a></td>
			<td rowspan="2" style="width:40%"> <h1 style="font-family:Comic Sans MS; font-size: 90px "><font color="#595959" ><b>JS</b></font> </h1><font size="50px" face="courier" color="#595959">Organics </font> </td>
			<td style="width:30%"> <a href="#offer_anchor"><h4 style="font-family:Comic Sans MS; font-size: 25px"> Offers </h4></a> </td>
		</tr>
		<tr style="height: 150px">
			<td colspan = "1" > <a href="#" onclick="openAddOffer()"> Add New Offer</a>
								<a href="#" onclick="openDeleteOffer()">Delete Offer </a></td>
			<td colspan = "2" > <a href="#" onclick="openAddProduct()"> Add New Product</a>
								
			
		</tr>
				<tr style="height: 500px" id="offer_anchor">


			<td colspan="3" >
				
				<div class="slideshow-container" id="slideshow_">

				</div>								  
			</td>
		</tr>
	</table>

		<!--Products-->

<table id="products_anchor" style="border: 5px solid black; width:100%; border-bottom: 0px; border-top: 0px" cellpadding="10px" cellspacing="0">
		
	</table>



<table cellpadding="10px" cellspacing="0" style="width:100%; border:5px solid black; border-top: 0px ">

		<tr style="height: 100px " id="Follow">
			
				<td  colspan="3" 
			style="text-align: center;"> <label style="padding-right: 50px; font-size: 40px">Follow Us</label> 
				
					<a ><i class="fa fa-facebook" style="padding: 30px"></i></a>

						<a ><i class="fa fa-instagram" style="padding:30px"></i></a>
						<a>	<i class="fa fa-youtube" style="padding:30px"></i></a>
				</td>
			
		</tr>
		<tr style="height: 300px">
			<td colspan="3"><img src="img/values.PNG" width="100%"></td>
		</tr>
		<tr style="height: 250px">
			<td colspan="3" >

				<div class="w3-container w3-padding-large w3-light-grey">
				    <label style="font-family:courier; font-size: 40px; color: #595959;" ><b>Contact Us</b></label>
				    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
				      <div class="w3-third w3-dark-grey">
				        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
				        <p>email@email.com</p>
				      </div>
				      <div class="w3-third w3-teal">
				        <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
				        <p>Chennai,Tamil Nadu, India</p>
				      </div>
				      	<div class="w3-third w3-dark-grey">
					        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
					        <p>number</p>
      				  	</div>
    				</div>
    
 				 </div>
			</td>
		</tr>

	</table>

<!-- FORM TO ADD OFFER -->
<div class="form-popup" id="AddOfferForm">
	<center>
<table id="formtable">

	<form action="AddOfferServlet" method="post" name="form1" id="form-container">
		<tr><td style="text-align: right;"><button onclick="closeAddOffer()"><i class="fa fa-close" style="padding: 2px"></i></button></td></tr>
		<tr>
		 <td style="align-content: center;color: gray; font-size: 25px; padding-bottom: 30px"><b>Add New Offer</b></td>
		 
		</tr> 
		<tr><td style="text-align: left;"><label for="offer_name" style="color: gray; font-size: 15px; padding-top: 30px ">Offer Name</label></td></tr>
		</tr >
		<tr>
			
			<td><input type="text" name="offer_name" id="offer_name"  placeholder="Enter offer name" style="color: gray; font-size: 15px" required></td>
		</tr>
			
		
		<tr><td style="text-align: left;"><label for="offer_image" style="color: gray; font-size: 15px padding-top: 30px">Offer Image</label></td></tr>
		<tr>
			
			<td><input type="file" name="offer_image" id="offer_image"  placeholder="Select an image" style="color: gray; font-size: 15px;"></td>
		</tr>
		
		<tr>
		<td  align="center" style="padding-top: 30px; padding-bottom: 30px;"><button type="submit" class="btn">Add Offer!</button></td>s
		</tr>
	</form>
</table>
</center>
</div>



<!-- FORM TO DELETE OFFER -->
<div class="form-popup" id="DeleteOfferForm">
	<center>
<table id="formtable">

	<form action="DeleteOfferServlet" method="post" name="form2" id="form-container">
		<tr><td style="text-align: right;"><button onclick="closeDeleteOffer()"><i class="fa fa-close" style="padding: 2px"></i></button></td></tr>
		<tr>
		 <td style="align-content: center;color: gray; font-size: 25px; padding-bottom: 30px"><b>Delete Offer</b></td>
		 
		</tr> 
		<tr><td style="text-align: left;"><label for="offer_name" style="color: gray; font-size: 15px; padding-top: 30px ">Offer Name</label></td></tr>
		</tr >
		<tr>
			
			<td><input type="text" name="offer_name" id="offer_name" placeholder="Enter offer name" style="color: gray; font-size: 15px" required></td>
		</tr>
		<!--  Dropdown to choose offer to delete-->
		
		<tr>
		<td  align="center" style="padding-top: 30px; padding-bottom: 30px;"><button type="submit" class="btn">Delete Offer!</button></td>
		</tr>
	</form>
</table>
</center>
</div>


<!-- FORM TO ADD PRODUCT -->

<div id="AddProductForm">
	<center>
<table id="formtable">

	<form action="AddProductServlet" method="post" name="form3" id="form-container">
		<tr><td style="text-align: right;"><button onclick="closeAddProduct()"><i class="fa fa-close" style="padding: 2px"></i></button></td></tr>
		<tr>
		 <td style="align-content: center;color: gray; font-size: 25px; padding-bottom: 30px"><b>Add New Product!</b></td>
		 
		</tr> 
		<tr><td style="text-align: left;"><label for="nam" style="color: gray; font-size: 15px; padding-top: 30px ">Product Name </label></td></tr>
		
		<tr>
			
			<td><input class="in" type="text" name="nam" placeholder="Enter your name" style="color: gray; font-size: 15px" required></td>
		</tr>

			
		<tr><td style="text-align: left;"><label for="category" style="color: gray; font-size: 15px; padding-top: 30px ">Category</label></td></tr>
		<tr >
		<tr>
			
			<td><input class="in"  type="Dropdown" name="category" placeholder="Choose a category" style="color: gray; font-size: 15px"></td>
		</tr>
		

		<tr><td style="text-align: left;"><label for="product_image" style="color: gray; font-size: 15px padding-top: 30px">Product Image</label></td></tr>
		<tr>
			
			<td><input class="in"  type="file" name="product_image" placeholder="Select an image" style="color: gray; font-size: 15px;"></td>
		</tr>


		<tr><td style="text-align: left;"><label for="price" style="color: gray; font-size: 15px padding-top: 30px">Product Price</label></td></tr>
		<tr>
			
			<td><input class="in"  type="text" name="price" placeholder="Enter product price" style="color: gray; font-size: 15px;" ></td>
		</tr>
		

		<tr><td style="text-align: left;"><label for="product_desc" style="color: gray; font-size: 15px padding-top: 30px">Product Description</label></td></tr>
		<tr>
			
			<td><textarea class="in" name="product_desc" placeholder="Describe the product" style="color: gray; font-size: 15px;" ></textarea></td>
		</tr>
		
		<tr>

		<td  align="center" style="padding-top: 30px; padding-bottom: 30px;"><button type="submit" class="btn" style="margin-left: 20px;">Add Product</button></td>
		</tr>
	</form>
</table>
</center>
</div>



</body>



<script>
var slideIndex = 0;
//showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none"; 
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1} 
  slides[slideIndex-1].style.display = "block"; 
  setTimeout(showSlides, 3000); 
}

function openAddOffer(){
	
	
	document.getElementById("AddOfferForm").style.display="block";
	
}
function closeAddOffer(){
	document.getElementById("AddOfferForm").style.display="none";
}


function openDeleteOffer(){
	
	document.getElementById("DeleteOfferForm").style.display="block";
	
}

function closeDeleteOffer(){
	document.getElementById("DeleteOfferForm").style.display="none";
}

function openAddProduct(){
	
	document.getElementById("AddProductForm").style.display="block";
}
function closeAddProduct(){
	document.getElementById("AddProductForm").style.display="none";
}


function openDeleteProduct(){
	
	document.getElementById("DeleteProductForm").style.display="block";
}

function closeDeleteProduct(){
	document.getElementById("DeleteProductForm").style.display="none";
}

function loadDoc(url, cFunction){
	//document.getElementById("mailspan2").innerHTML=url;
	//document.getElementById("products_anchor").innerHTML=url;
	var xhttp;
xhttp= new XMLHttpRequest();
xhttp.onreadystatechange = function(){
//document.getElementById("products_anchor").innerHTML="Ready State = " + this.readyState + "Status = " + this.status;
	if(this.readyState==4 && this.status==200){


		cFunction(this);
	}
};
xhttp.open("GET",url,true);
xhttp.send();
}

function showProducts(xhttp){

	document.getElementById("products_anchor").innerHTML="showProducts";
	document.getElementById("products_anchor").innerHTML=xhttp.responseText;

}

function showOffers(xhttp){

	document.getElementById("slideshow_").innerHTML="showOffers";
	document.getElementById("slideshow_").innerHTML=xhttp.responseText;
	showSlides();


}
</script>
</html>