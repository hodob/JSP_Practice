<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page isErrorPage="true" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int count = 0;

	void addCount() {
		count++;
	}%>
	<%
		addCount();
	%>
	<h1>오류페이지 테스트</h1>
	<h2>
		방문자 수 :
		<%=count%>
		번째 방문자.
	</h2>
	<h2>JSP 에서 JSTL 사용자 정의 태그, taglib 지시어를 통해서 c(core)사용해보기</h2>
	<c:out value="출력 용도로 사용함, 마치 jsp의 " />
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}" />
		</c:forEach>
</body>
</html>