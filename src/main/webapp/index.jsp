<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
*{
	margin:0px;
	padding:0px;
}
	#container{
		height:100vh;
		display: flex;
		justify-content: center;
		align-items:center;
		background-image: url("https://cdn.pixabay.com/photo/2023/01/09/20/18/sunset-7708222_1280.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
	.a{
		border: 1px solid white;
		border-radius:35px;
		text-decoration:none;
		color:white;
		font-family:monospace;
		padding: 15px;
		width: 120px;
		transition:0.4s;	
	}
	#form{
		background:transparent;
		box-shadow: 0px 0px 35px 0.2px black;
		backdrop-filter:blur(2px);
		border-radius:10px;
		height: 250px;
		width: 500px;
		text-align: center;
		font-size:x-large;
		display: flex;
		flex-direction:column;
		align-items: center;
		justify-content: center;	
	}
	a:hover {
	border: 1px solid black;
	background: linear-gradient(45deg, white, orange);
	width: 135px;
	color: black;
}
</style>
</head>
<body>
<div id="container">

<div id="form">
	<a href="Loginjsp.jsp" class="a">Login</a>
	<br>
	<br>
	<a href="signup.jsp" class="a">Signup</a>
</div>
	
</div>
</body>
</html>