<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home::Page</title>
<style>
body {
	height: 100vh;
	width: 100%;
	font-family: sans-serif;
}

.main-div {
	border: 1px solid #777;
	display: flex;
	flex-direction: row;
	justify-content:right;
	align-items:center;

	padding: 5px 20px;
	gap:40px;
	font-size: 22px;
}
.main-div a{
background: transparent ;
padding: 6px 12px; 
border :1px solid blue;
text-decoration: none;
}
</style>
</head>
<body>

	<!--  <%@ include file="template.jsp" %>-->

	<div class="main-div">
		<a href="login.jsp">Login</a> <a href="signup.jsp">SignUp</a>

	</div>



</body>
</html>