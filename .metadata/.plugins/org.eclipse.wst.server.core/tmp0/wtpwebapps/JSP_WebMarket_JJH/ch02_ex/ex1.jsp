<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%-- 선언부 시작 <%! 로 시작한다. 느낌표가  --%>
	<%-- 전역 메소드? 나머지는 지역변수 (<% %>) 같은거 --%>
	<%!int count = 3;
	String name = "내이름";
	String location = "부산";
	int[][] test = new int[10][20];

	String makeItLower(String data) {
		return data.toLowerCase();
	}

	String makeItUpper(String data) {
		return data.toUpperCase();
	}

	//class 선언 필요없나?
	public int Sum(int a, int b) {
		return a + b;
	}%>

	<%-- 스트립틀릿 태그로 자바 로직 코드 작성 --%>
	<%
		for (int i = 1; i <= count; i++) {
		out.println("Java Server Pages " + i + "<br>");
	}
	for (int i = 0; i < test.length; i++) {
		for (int j = 0; j < test[0].length; j++) {
			out.println(test[i][j]);
		}
		out.println("<br>");
	}
	%>



	<%-- 표현문 태그로 선언문의 메소드를 호출하여 문자열 형태로 출력 --%>
	<%=count%>
	<br> name
	<br>
	<%=name%>
	<br>
	<%=makeItLower("Hello World")%>
	<br>
	<%=makeItUpper("Hello World")%>
	<br>
	<%=Sum(3, 4)%>
	<br>
	<%=location%>
	<br>
	<%
		out.println(Sum(100, 200));
	%>
	
	<h1>날자 클래스 사용</h1>
	<%=
	new java.util.Date()
	%>

</body>
</html>