<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Sign-Up </title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background: #f0f4f8;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Form container */
div {
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px 40px;
	border-radius: 10px;
	width: 100%;
	max-width: 400px;
	text-align: center;
}

/* Table style */
table {
	width: 100%;
	margin-bottom: 20px;
}

td {
	padding: 10px;
	text-align: left;
	font-size: 14px;
	color: #333;
}

input[type="email"], input[type="password"] {
	width: 70%;
	height : 7px ;
	padding: 12px;
	border-radius: 5px;
	border: 1px solid #ccc;
	margin-top: 5px;
	font-size: 14px;
	outline: none;
	transition: all 0.3s ease;
}

/* Input focus state */
input[type="email"]:focus, input[type="password"]:focus {
	border-color: #4CAF50;
	box-shadow: 0 0 5px rgba(76, 175, 80, 0.2);
}

/* Submit button style */
input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 15px 25px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	width: 100%;
	transition: all 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

/* Message text style */
h4 {
	color: #333;
	font-size: 16px;
	margin-top: 10px;
}

h4 a {
	color: #4CAF50;
	text-decoration: none;
	font-weight: bold;
}

h4 a:hover {
	text-decoration: underline;
}

/* Responsive design */
@media screen and (max-width: 480px) {
	div {
		padding: 20px 30px;
		width: 90%;
	}
	input[type="email"], input[type="password"] {
		padding: 10px;
		font-size: 14px;
	}
	input[type="submit"] {
		padding: 12px 20px;
		font-size: 14px;
	}
}
</style>
</head>
<body>

	<div align="center">
	<h1>SIGN-UP</h1>
		<form action="./add-admin"  method="Post">
			<table>
				<tr>
					<th>Email</th>
					<td> <input type="text" name="email"  style="width: 213px"></td>
				</tr>
				
				<tr>
					<th>Password</th>
					<td> <input type="password" name="password"></td>
				</tr>
				
			</table>
			<input type="submit" value="Signup">
		</form>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<h4><%=message%></h4>
		<%
		}
		%>
		<h4>
			Already an user?<a href="login-page">login</a>
		</h4>
	</div>
</body>
</html>