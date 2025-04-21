<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >

body {
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
  background: #f2f2f2;
  color: #333;
}

div {
  max-width: 800px;
  margin: 50px auto;
  background-color: #fff;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  text-align: center;
}

h4 {
  color: #28a745;
  font-size: 1.2em;
  margin-top: 20px;
}

form {
  width: 100%;
}

table {
  width: 100%;
  margin-bottom: 20px;
  border-collapse: collapse;
  table-layout: fixed;
}

td {
  padding: 12px;
  text-align: left;
  font-size: 16px;
}

input[type="text"],
input[type="email"] {
  width: 100%;
  padding: 12px;
  margin: 8px 0 16px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  box-sizing: border-box;
  transition: border 0.3s ease;
}

input[type="text"]:focus,
input[type="email"]:focus {
  border-color: #4CAF50;
  outline: none;
}

input[type="radio"] {
  margin-right: 8px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 30px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s ease, transform 0.3s ease;
}

input[type="submit"]:hover {
  background-color: #45a049;
  transform: translateY(-2px);
}

input[type="submit"]:active {
  transform: translateY(2px);
}

label {
  font-size: 16px;
  color: #555;
  margin-left: 5px;
  font-weight: 600;
}

</style>
</head>
<body>

<div align="center">
		<form action="./add-student" method="post">
			<table>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="email" name="email"></td>
				</tr>
				
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>Course</td>
					<td><input type="radio" name="course" value="DEVELOPEMENT">
						<label>Developement</label></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="radio" name="course" value="TESTING">
						<label>Testing</label></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<h4><%=message%></h4>
		<%
		}
		%>
	</div>
</body>
</html>