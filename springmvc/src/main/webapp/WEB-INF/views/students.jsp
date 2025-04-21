<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="edu.jspider.springmvc.DTO.Student"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7fc;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    div {
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        width: 80%;
        max-width: 1200px;
        overflow-x: auto;
    }

    h4 {
        color: #2e8b57;
        font-size: 18px;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        text-align: left;
        font-size: 16px;
    }

    th, td {
        padding: 12px 15px;
        border: 1px solid #ddd;
    }

    th {
        background-color: #4CAF50;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    a {
        text-decoration: none;
        color: #4CAF50;
        font-weight: bold;
        padding: 5px 10px;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #45a049;
        color: white;
    }

    .action-buttons {
        display: flex;
        gap: 10px;
    }

    .action-buttons a {
        padding: 6px 15px;
        background-color: #e7e7e7;
        color: #333;
        border-radius: 5px;
        transition: background-color 0.3s ease-in-out;
    }

    .action-buttons a:hover {
        background-color: #e0e0e0;
    }
</style>
</head>
<body>

<div align="center">
		<%
		@SuppressWarnings("unchecked")
		List<Student> students = (List<Student>) request.getAttribute("students");
		if (students != null) {
		%>
		<table border="2pxsolid">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Course</th>
				<th colspan="2">Action</th>
			</tr>
			<%
			for (Student student : students) {
			%>
			<tr>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><%=student.getCourse()%></td>
				<td><a href="edit-student?id=<%=student.getId()%>">Edit</a></td>
				<td><a href="delete-student?id=<%=student.getId()%>">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>

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