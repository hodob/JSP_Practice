<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>첫 페이지입니다.</h2>
	<%-- <jsp:forward page="b.jsp"></jsp:forward> --%>
	<%-- 	<jsp:include page="b.jsp">
		<jsp:param value="<%=new java.util.Date().toLocaleString()%>"
			name="date1" />
	</jsp:include> --%>
	<%-- 
	<jsp:forward page="b.jsp">
		<jsp:param value="admin" name="id" />
		<jsp:param value='<%=java.net.URLEncoder.encode("테스트")%>' name="name" />
		<jsp:param value='<%=java.net.URLEncoder.encode("aaa@bbb.com")%>' name="email" />
	</jsp:forward> --%>
	<%-- 
	<jsp:forward page="b.jsp">
		<jsp:param value="<%=java.util.Calendar.getInstance().getTime() %>" name="date" />

	</jsp:forward>  --%>

	<%-- 	<jsp:useBean id="date" class ="java.util.Date"></jsp:useBean>   <!--  date 는 객체이름이다.  -->
	<h2>시간에서 , useBean 으로 적용하기, </h2>
	<h2><%=date %></h2> --%>



	<jsp:useBean id="bean123" class="ch04.com.dao.calc"></jsp:useBean>
	<h2>class 사용해서 하는 것입니다.</h2>
	<h2>
		<%
			int result = bean123.pow(5);
		%>
	</h2>
	<!-- out.println 으로 표현하느 ㄴ방법도 있다.  -->
	<h2><%=result%></h2>

	<jsp:useBean id="person" class="ch04.com.dao.Person"></jsp:useBean>
	<h2>
		아이디 :
		<%=person.getId()%></h2>
	<h2>
		이름 :
		<%=person.getName()%></h2>
	<jsp:useBean id="person2" class="ch04.com.dao.Person"></jsp:useBean>
	<%
		person2.setId(99999999);
	person2.setName("테스트2");
	%>
	<h2>
		아이디 :
		<%=person2.getId()%></h2>
	<h2>
		이름 :
		<%=person2.getName()%></h2>
	<h2>
		아이디 :
		<%=person.getId()%></h2>
	<h2>
		이름 :
		<%=person.getName()%></h2>
	<jsp:useBean id="animal" class="ch04.com.dao.Animal"></jsp:useBean>
<%-- 	<%
		animal.setName("동물1");
	animal.setAge(12);
	animal.setLocation("달나라");
--%>

<jsp:setProperty property="name" name="animal" value="동물이름"/>
<jsp:setProperty property="age" name="animal" value="12"/>
<jsp:setProperty property="location" name="animal" value="달나라"/> 


<%-- <h2><%=animal.getName() %></h2>
<h2><%=animal.getAge() %></h2>
<h2><%=animal.getLocation() %></h2> --%>
<h2>
<jsp:getProperty property="name" name="animal"/> <br>
<jsp:getProperty property="age" name="animal"/> <br>
<jsp:getProperty property="location" name="animal"/> <br>
</h2>


</body>
</html>