<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
//선언문->jsp 전체 페이지에서 불러다 사용할 변수,메서드가 필요할 때 선언하는 영역
String name="홍길동";

public void setName(String name){ //Car(String name){this.name=name;}
	this.name=name;
	}

public String getName(){
	return name;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp 3번째(표현식활용,선언문의 메서드 작성)</title>
</head>
<body>
<%
	float f=2.3f;
	int i=Math.round(f);//2.3은 반올림X	
	java.util.Date d=new java.util.Date();//import구문을 쓰지 않았을 때
	out.println("d의 값은?=>"+d);//d.toString()
%>
<hr><p>
<h1>
정수 f의 반올림값은? <%=i%><p>
현재의 날짜와 시간은? <%=d.toString() %><br>
name의 값은? <%=name %><p>
getName()을 호출? <%=getName() %>
</h1>
</body>
</html>