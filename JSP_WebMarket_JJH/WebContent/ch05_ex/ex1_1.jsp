<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> Enumeration 을 이용해서 여러 값들을 반복문을 출력하기 </h2>
<%
Enumeration en =request.getHeaderNames();
while(en.hasMoreElements()){
	String headerName = (String)en.nextElement(); //nextEl -- 원소를 가져오는 것을 의미한다.
	String headerValue = request.getHeader(headerName);  //키값으로 value 값 저장 

%>
헤더이름 : <%= headerName %> , 헤더 값 : <%= headerValue %> <br>
<% } %>

</body>
</html>