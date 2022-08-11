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
/* String name=request.getParameter("name"); */
String id=request.getParameter("id1234");
String pass=request.getParameter("passwd");
if(id.equals("admin")||pass.equals("1234")){
	response.sendRedirect("success.jsp");
}else {
	response.sendRedirect("failed.jsp");
}

%>







<p>이름 : <%=id%>
<p>이름 : <%=pass%>
<h2>넘어온 정보들.</h2>
<p> 넘오온 요청 정복 길이 : <%=request.getContentLength() %>
<p> 넘오온 요청 정보 method : <%=request.getMethod() %>
<p> 넘오온 요청 정보 uri : <%=request.getRequestURI() %>
<p> 넘오온 요청 정보 sevaername : <%=request.getServerName() %>

</body>
</html>