<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>b.jsp 파일 입니다. 포어드로 넘어온 패이지.</h2>

		<%-- <h2>오늘의 날짜와 시간 :
		<%=(new java.util.Date().toLocaleString()) %></h2> --%>
		<%-- <h2>오늘의 날짜와  시간 : <%=request.getParameter("date1")%></h2> --%>
		<%-- <h2>아이디 : <%=request.getParameter("id") %></h2>
		<%
		String name = request.getParameter("name");   /* requset 는 내장되 있는 것에 서 가져오는것 다른것은 자바에 라이브러리에서 가져오는것  */
		String email = request.getParameter("email");  /* 전역변수 ??*/
		%>
		<h2>이름 : <%=java.net.URLDecoder.decode(name)%></h2>  <!-- 인코딩 된 한글을 디코딩한다.  -->
		<h2>이메일 : <%=java.net.URLDecoder.decode(email)%></h2> --%>
		
				<%
		String name = request.getParameter("date");  

		%>
		
		<h2> 오늘 날짜와 시간 : <%= request.getParameter("date")%></h2>
</body>
</html>