<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열의 값을 출력</title>
</head>
<body>
<%
	String keyword[]={"Scriptlet","Expression","Declaration"};%>
	<table>
	<%
	for(int i=0;i<keyword.length;i++){ %>
	<table border="1" width="200">
		<tr>
		  <td><%=i %></td>
		  <td><%=keyword[i]%></td>
		</tr>
	<% } %>	
	</table>
</body>
</html>