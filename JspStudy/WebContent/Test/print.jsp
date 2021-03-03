<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String mun=request.getParameter("mun");//반복할 문자열
	int num=Integer.parseInt(request.getParameter("num"));//반복할 숫자
%>
<%
int i = 0;
while ( i < num) {
%>
<br><%=mun%>
<%
i++;
}
%>
</body>
</html>