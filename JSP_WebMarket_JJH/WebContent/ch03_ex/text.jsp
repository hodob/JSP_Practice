<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
 <%@ page errorPage="myError2.jsp"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재는 text/xml 테스트 페이지 입니다.</h1>
	<div>
		오늘 날짜
		<%=new Date()%></div>
	<%
		 String str = null;
	out.println(str.toString()); 
	int num = 3;
	%>
	<h2>EL 표기법 에 대해서 간단히 알아보기 .</h2>
	<%
/* 		 request.setAttribute("RequstAttribut", "Request 내장 객체");
	request.setAttribute("앞에 값은  보통 키 값: 표전 라벨지", "실제 값(value)"); */
	request.setAttribute("key3", "실제 값");
	%>
	${requestScope.key3}
	<%@  include file ="myError.jsp"  %>



</body>
</html>