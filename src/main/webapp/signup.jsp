<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<style >
*{
padding: 0px;
margin: 0px;
}
#container{
		height:100vh;
		background-image: url("https://cdn.pixabay.com/photo/2023/01/09/20/18/sunset-7708222_1280.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		display: flex;
		flex-direction:row;
		justify-content: center;
		align-items:center;
	}
#box{
	background: linear-gradient(45deg, white, orange);
	padding: 30px;
	border-radius:10px;
	height: 450px;
	font-family: sans-serif;
}
input{
display:flex;
align-content: center;
width: 250px;
height: 20px;
}
#submit{
	background: linear-gradient(45deg, orange, white);
	width: 150px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	padding-left: 40px;
	font-family: monospace;
	font-size: x-large;
	transition:0.4s;
	
}
#submit:hover {
	background: linear-gradient(45deg, white, orange);
	width: 150px;
	height: 35px;
	text-align: center;
	border-radius: 30px;
	padding-left: 40px;
	font-family: monospace;
	font-size: x-large;
	transition:0.4s;
	cursor: pointer;
}


</style>
</head>
<body>
<div id="container">
<div id="box">
<form action="saveuser" method="post" enctype="multipart/form-data">
	<h2 id="heading" style="text-align:center">SIGNUP</h2>
	<br>
	<label for="userid" >ID :</label>
	<input type="text" name="id"><br>
	
	<label for="username">NAME :</label>
	<input type="text" name="name"><br>
	
	<label for="useremail">EMAIL :</label>
	<input type="email" name="email"><br>
	
	<label for="usercontact">CONTACT :</label>
	<input type="text" name="contact"><br>
	
	<label for="userpassword">PASSWORD :</label>
	<input type="text" name="password"><br>
	
	<label for="userimage">IMAGE :</label>
	<input type="file" name="image"><br><br>
	
	<center>
	<input type="submit" id="submit">
	</center>
</form>
</div>
</div>
</body>
</html>