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
<!-- <form action="ex2.jsp" method="post">
<p>이름 		: 	<input type="text" name = "name">
<p>아이디 	: 	<input type="text" name = "id1234">
<p>비번 		: 	<input type="text" name = "passwd">
<p>아이디 	:	<input type = "submit" value="전송">
</form> -->

<%-- <%! String headerName;
String headerValue;%> 

<%
String hostValue = request.getHeader("host");
String ctValue = request.getHeader("accept-language");
%>

호스트의 부러온 값<%= hostValue %> <br>
content-type <%=ctValue%>

<h2> Enumeration 을 이용해서 여러 값들을 반복문ㄷ르을 출력하기 </h2>
<%
Enumeration en =request.getHeaderNames();
while(en.hasMoreElements()){
	String headerName = (String)en.nextElement(); //nextEl -- 원소를 가져오는 것을 의미한다.
	String headerValue = (String)request.getHeader(headerName);  //키값으로 value 값 저장 
}
%>
헤더이름 : <%= headerName %> , 헤더 값 : <%= headerValue %> <br> --%>

<%-- 요청정보길이 = <%=request.getContentLength() %>
 --%>

<%-- <%
response.sendRedirect("https://www.google.com");
%> --%>
<!-- <form action="ex2.jsp" method="post">
<p>아이디 	: 	<input type="text" name = "id1234">
<p>비번 		: 	<input type="text" name = "passwd">
<input type = "submit" value="전송">
</form> 
 -->
<%-- 
<%
response.setHeader("Cache-control", "use_cache_aaaa");
response.addHeader("contentType", "text/html; charset=utf-8");
response.setDateHeader("date", 1L);
%>
cache-control : <%=response.getHeader("cache-control") %> <br>
contentType : <%= response.getHeader("contentType") %> <br>
date : <%= response.getHeader("date") %> <br>
 --%>
<%-- <h2> 5초마다 갱신</h2>
<% response.setIntHeader("Refresh", 1) ;%>
<p> <%=(new java.util.Date())%>
 --%>

<%-- <%response.sendError(404,"요청페이지 ㄴㄴ") ;%> --%>
<%response.sendError(500,"서버오류") ;%>





</body>
</html>