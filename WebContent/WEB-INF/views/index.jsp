<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College</title>
</head>

<body>
	<div align="center">
	<h2>Student Manager</h2>
	<form method="get" action="search">
		<input type="text" name="whatever" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	<h3><a href="new">New Student</a></h3>
	<div style="width:700px; height:400px; overflow:auto;">
	<table border="1" cellpadding="5">
	
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>SchoolYr</th>
			<th>Campus</th>
			<th>EntryDate</th>
			<th>Grade</th>
		</tr>
		<c:forEach items="${listStudent}" var="student">
		<tr>
			<td>${student.id}</td>
			<td>${student.name}</td>
			<td>${student.schoolYr}</td>
			<td>${student.campus}</td>
			<td>${student.entryDate}</td>
			<td>${student.grade}</td>
			<td>
				<a href="edit?id=${student.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${student.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>
</div>	
</body>
</html>