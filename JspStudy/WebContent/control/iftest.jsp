<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 처리해주는 페이지</title>
<%!
	String msg;//전달받은 값은 영어->한글로 바꿔서 출력(색깔)
%>
</head>
<%
  //요청을 받아서 처리해주는 구문=>request 내장 객체
  //한글을 입력을 받을 때 한글이 깨지지 않은 상태로 전송해달라
  request.setCharacterEncoding("utf-8");
  //형식) 받는 방법=>String 반환받는 변수명=request.getParameter("매개변수명");
 String name=request.getParameter("name");
 String color=request.getParameter("color");
 
 System.out.println("name=>"+name+",color=>"+color);//null 디버깅용
 //color값을 구분=>contentEquals을 사용해야 한다.
 //equals() or contentEquals
  if(color.equals("blue")){//파란색을 선택
	  msg="파란색";  
  }else if(color.equals("red")){
	  msg="붉은색";
  }else if(color.equals("orange")){
	  msg="오렌지색";
  }else {//etc
	  color="white";
  	  msg="기타색(흰색)";
  }
%>
<body bgcolor="<%=color%>">
	<%=name %>님이 좋아하는 색깔은? <%=msg %> 입니다.
</body>
</html>