<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Student</title>
</head>
<body>
	<div align="center">
		<h2>New Student</h2>
		<form:form action="save" method="post" modelAttribute="student">
			<table border="0" cellpadding="5">
				<tr>
					<td>Name: </td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>SchoolYr: </td>
					<td><form:input path="schoolYr" /></td>
				</tr>
				<tr>
					<td>Campus: </td>
					<td><form:input path="campus" /></td>
				</tr>
				<tr>
					<td>EntryDate: </td>
					<td><form:input path="entryDate" /></td>
				</tr>
				<tr>
					<td>Grade: </td>
					<td><form:input path="grade" /></td>
				</tr>		
				<tr>
					<td colspan="2"><input type="submit" value="Add"></td>
				</tr>						
			</table>
		</form:form>
	</div>
</body>
</html>