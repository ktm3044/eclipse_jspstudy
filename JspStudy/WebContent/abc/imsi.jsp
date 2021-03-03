<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 2번째 예제</title>
</head>
<body>
<%
//int count=3;
%>
<%
 //자바코드를 분리해서 코딩할 때도 쓸 수 있다.
 //int count=3;//지역
 for(int i=0;i<count;i++){
	 out.println("<h1>Jsp 테스트"+i+"!</h1>");
 }
 out.println("count="+count);
//1)자바스크립트 코드와 html태그를 같이 사용X
//2)표현식은 스크립트릿안에 사용X
%>
<%!
//선언문(Declaration)=>모양이 script와 비슷
//선언된 위치에 상관없이 변수를 불러다 사용이 가능=>멤버변수 처럼
int count=3;
%>
<p>
스크립트 밖에서 출력 count의 값은?<%=count%><br>
수식계산:<%=(3+5)%>
</body>
</html>