<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/WebMarketDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO memberEx VALUES (?,?,?,?)
   <sql:param value="<%=id%>" />
   	<sql:param value="<%=password%>" />
   		<sql:param value="<%=name%>" />
	<sql:param value="<%=gender%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=1" />
</c:if>

