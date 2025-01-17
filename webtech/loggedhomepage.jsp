<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
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

		#signupform{
			display: none;
			  position: fixed;
			  bottom: 5px;
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

		#email, #pwd {
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


		#email:focus, #pwd:focus {
		  background-color: #ddd;
		  outline: none;
		  opacity: 1;
		}

		#btn {
		  background-color: #d5d5f6 ;	
		  color: #595959;
		  padding: 10px 20px;
		  border: none;
		  cursor: pointer;
		  
		  margin-bottom:10px;
		  opacity: 0.8;
		  text-align: center;
		}
		#btn:hover {
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

		#signup:hover{
			opacity: 1;
		}
		#signup{
			background-color: #d5d5f6 ;	
		  color: #595959;
		  padding: 10px 20px;
		  border: none;
		  cursor: pointer;
		  
		  margin-bottom:10px;
		  opacity: 0.8;
		  text-align: center;
		}


		.zoom:hover {
  transform: scale(1.25);
   /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}

	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body onload="loadDoc('showproductlist.jsp', showProducts); loadDoc('showoffers.jsp', showOffers);">
	<table cellpadding="10px" cellspacing="0" style="width:100%; border:5px solid black; border-bottom:0px ">
		<tr style="height: 150px">
			<td style="width:30%"> <a href="#products_anchor"> <h4 style="font-family:Comic Sans MS; font-size: 25px" >Products </h4></a></td>
			<td rowspan="2" style="width:40%; "> <h1 style="font-family:Comic Sans MS; font-size: 90px "><font color="#595959" ><b>JS</b></font> </h1><font size="50px" face="courier" color="#595959">Organics </font> </td>
			<td style="width:30%"> <a href="#offer_anchor"><h4 style="font-family:Comic Sans MS; font-size: 25px"> Offers </h4></a> </td>
		</tr>
		<tr style="height: 150px">
			<td > 
				<div class="search-container">
    				<form action="">
     					<input type="text" placeholder="Search.." name="search">
      					<button type="submit"><i class="fa fa-search"></i></button>
    				</form>
  				</div>
			</td>
			<td colspan = "2" > <a href="homepage.jsp"><i class="fa fa-user" style="padding: 2px"></i><label style="padding: 6px; font-family: Comic Sans MS; ">Log Out</label></a><br>
								<a href="cartopen.jsp" > <i class="fa fa-shopping-cart" style="padding: 2px"></i><label style="padding: 6px;  font-family: Comic Sans MS;">Cart</label></a>



			</td>
			
		</tr>

<!--Offers-->

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


<div class="form-popup" id="myForm">
	<center>
<table id="formtable">

	<form action="LoginServlet" method="post" name="form1" onsubmit="return validate(event);" >
		<tr><td style="text-align: right;"><button onclick="closeForm1()"><i class="fa fa-close" style="padding: 2px"></i></button></td></tr>
		<tr>
		 <td style="align-content: center;color: gray; font-size: 25px; padding-bottom: 30px"><b>Login Form</b></td>
		 
		</tr> 
		<tr><td style="text-align: left;"><label for="email" style="color: gray; font-size: 15px; padding-top: 30px ">Email Id </label></td></tr>
		<tr >
		<tr>
			
			<td><input type="text" id="email" name="email" placeholder="Enter email address" style="color: gray; font-size: 15px"></td>
		</tr>

			<td style="text-align: left;"><span id = "mailspan" style="color: red"></span></td>
		</tr>
		<tr><td style="text-align: left;"><label for="pwd" style="color: gray; font-size: 15px padding-top: 30px">Password </label></td></tr>
		<tr>
			
			<td><input type="password" id="pwd" name="pwd" placeholder="Enter password" style="color: gray; font-size: 15px;"></td>
		</tr>
		<tr>
		<td style="text-align: left; "><span id = "pwdspan" style="color: red"></span></td>
		</tr>

		<tr>

		<td  align="center" style="padding-top: 30px; padding-bottom: 30px;"><input type="submit" id="btn" value="Login" ><a id="signup" style="margin-left: 20px;" onclick="openSignUp();">Sign up</a></td>
		</tr>
	</form>
</table>
</center>
</div>




<div id="signupform">
	<center>
<table id="formtable">

	<form action="SignUpServlet" method="post" name="form2" id="form-container" onsubmit="return validate2(event);">
		<tr><td style="text-align: right;"><button onclick="closeForm2()"><i class="fa fa-close" style="padding: 2px"></i></button></td></tr>
		<tr>
		 <td style="align-content: center;color: gray; font-size: 25px; padding-bottom: 30px"><b>Register with us!</b></td>
		 
		</tr> 
		<tr><td style="text-align: left;"><label for="nam" style="color: gray; font-size: 15px; padding-top: 30px ">Name </label></td></tr>
		
		<tr>
			
			<td><input class="in" type="text" id="nam" name="nam" placeholder="Enter your name" style="color: gray; font-size: 15px" ></td>
		</tr>

		<tr>
			<td style="text-align: left;"><span id = "namspan" style="color: red"></span></td>
		</tr>

			
		<tr><td style="text-align: left;"><label for="email" style="color: gray; font-size: 15px; padding-top: 30px ">Email Id </label></td></tr>
		<tr >
		<tr>
			
			<td><input class="in"  type="text" id="email1" name="email" placeholder="Enter email address" style="color: gray; font-size: 15px" onblur="Usernamecall()"></td>
		</tr>
		<tr>
			<td style="text-align: left;"><span id = "mailspan2" style="color: red"></span></td>
		</tr>
		<tr><td style="text-align: left;"><label for="pwd" style="color: gray; font-size: 15px padding-top: 30px">Password </label></td></tr>
		<tr>
			
			<td><input class="in"  type="password" id="pwd" name="pwd" placeholder="Enter password" style="color: gray; font-size: 15px;"></td>
		</tr>
		<tr>
		<td style="text-align: left; "><span id = "pwdspan2" style="color: red"></span></td>
		</tr>

		<tr><td style="text-align: left;"><label for="mob" style="color: gray; font-size: 15px padding-top: 30px">Mobile Number</label></td></tr>
		<tr>
			
			<td><input class="in"  type="text" id="mob" name="mob" placeholder="Enter your mobile number" style="color: gray; font-size: 15px;" ></td>
		</tr>
		<tr>
		<td style="text-align: left; "><span id = "mobspan" style="color: red"></span></td>
		</tr>

		<tr><td style="text-align: left;"><label for="address" style="color: gray; font-size: 15px padding-top: 30px">Address</label></td></tr>
		<tr>
			
			<td><textarea class="in" id="address" name="address" placeholder="Enter your address" style="color: gray; font-size: 15px;" ></textarea></td>
		</tr>
		<tr>
		<td style="text-align: left; "><span id = "addressspan" style="color: red"></span></td>
		</tr>



		<tr>

		<td  align="center" style="padding-top: 30px; padding-bottom: 30px;"><button id="signup" type="submit" style="margin-left: 20px;" >Sign up</button></td>
		</tr>
	</form>
</table>
</center>
</div>


</body>

<script>


var slideIndex = 0;


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

function openForm1(){
	document.getElementById("myForm").style.display="block";
}
function closeForm1(){
	document.getElementById("myForm").style.display="none";
}
function validate(event){
	event.preventDefault();
			var mail = document.form1.email.value;
			var pwd = document.form1.pwd.value;
			var sp1="";
			var sp2="";
			var flag=0;
			if(mail=="" || mail==null)
			{
				sp1+="Required. ";
				flag=1;
			}
			if(pwd=="" || pwd == null)
			{
			flag=1;
				sp2+="Required.";
			}
			if(!mail.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
			{
				flag=1;
				sp1+="Enter valid email id!";
			}
			if(flag=0)
			{
				document.form2.submit();
			}
			else
			{
				document.getElementById("mailspan").innerHTML = sp1;
				document.getElementById("pwdspan").innerHTML = sp2;
				return false;

			}
			
		}	

function validate2(event){
	event.preventDefault();

			var mail = document.form2.email.value;
			var pwd = document.form2.pwd.value;
			var mobile = document.form2.mob.value;
			var addr = document.form2.address.value;
			var unam = document.form2.nam.value;
			var sp1="";
			var sp2="";
			var sp3="";
			var flag=0;


			if(mail=="" || mail==null)
			{
				sp1+="Required. ";
				flag=1;
			}
			if(pwd=="" || pwd == null)
			{
				sp2+="Required.";
				flag=1;
			}
			if(!mail.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
			{
				sp1+="Enter valid email id!";
				flag=1;
			}
			if(addr==""||addr==null)
			{
				sp4="Required.";
				flag=1;
			}
			if(mobile==""||mobile==null)
			{
				sp3+="Required.";
				flag=1;
			}
			if(isNaN(parseInt(mobile))|| mobile.length!=10)
			{
				sp3+="Enter a valid mobile number.";
				flag=1;
			}
			if(unam==""||unam==null)
			{
				sp5="Required.";
				flag=1;
			}
			if(flag==0){
				//document.getElementById('form-container').submit();

				document.form2.submit();

			}
			else
			{
				document.getElementById("mailspan2").innerHTML = sp1;
			document.getElementById("pwdspan2").innerHTML = sp2;
			document.getElementById("mobspan").innerHTML = sp3;
			document.getElementById("addressspan").innerHTML = sp4;
			document.getElementById("namspan").innerHTML = sp5;
				return false;
			}
			

	//document.getElementById("myForm").style.display="none";
	//document.getElementById("signupform").style.display="block";

}





function openSignUp(){
	document.getElementById("myForm").style.display="none";
	document.getElementById("signupform").style.display="block";
}

function closeForm2(){
	document.getElementById("signupform").style.display="none";
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

function Mailcheck(xhttp){
	//document.getElementById("mailspan2").innerHTML="not working mailcheck";
	document.getElementById("mailspan2").innerHTML=xhttp.responseText;
}


function showProducts(xhttp){

	document.getElementById("products_anchor").innerHTML="showProducts";
	document.getElementById("products_anchor").innerHTML=xhttp.responseText;

}

function Usernamecall(){
	//document.getElementById("mailspan2").innerHTML="usernamecalled";
	var urls="Checkusername.jsp?ver=" + document.getElementById("email1").value;
	loadDoc(urls, Mailcheck);
}

function showOffers(xhttp){

	document.getElementById("slideshow_").innerHTML="showOffers";
	document.getElementById("slideshow_").innerHTML=xhttp.responseText;
	showSlides();
}


</script>

</html>