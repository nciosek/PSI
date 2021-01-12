<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login User</title>
</head>
<body>
<h1>Wyświetlanie Użytkownika o ID:</h1>
<%
String error_message = "";
Object error = request.getAttribute("error");
if (error != null)
	error_message = error.toString();

%>
<form action="HelloServlet">
<table cellspacing="4">
	<tr>
		<td>Podaj swoje imię:</td>
		<td><input name="user" type="text" size="20"></td>
		<td style="color: red"><%=error_message%></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Zaloguj"></td>
		<td></td>
	</tr>
</table>
<br>
</form>

</body>
</html>
