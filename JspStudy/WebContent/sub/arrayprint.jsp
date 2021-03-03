<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 응답하는 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//한글처리
	String name=request.getParameter("name");//이름
	String addr=request.getParameter("addr");
	System.out.println("name=>"+name+",addr=>"+addr);
%>
name=<%=name %>
addr=<%=request.getParameter("addr") %>
<%
//같은 태그=>배열을 의미
String values[]=request.getParameterValues("pet");//문자열배열(3)
if(values!=null){
	for(int i=0;i<values.length;i++) {%>
		선택한 동물은?<%=values[i]%>
<%
	}
}
%>
</body>
</html>