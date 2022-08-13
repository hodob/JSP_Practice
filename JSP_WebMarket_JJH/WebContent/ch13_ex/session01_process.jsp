<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id3 = request.getParameter("id");
		String user_pw3 = request.getParameter("passwd");

		if (user_id3.equals("admin1234") && user_pw3.equals("1234")) {
			session.setAttribute("userID2", user_id3);
			session.setAttribute("userPW2", user_pw3);
			out.println("세션 설정이 성공했습니다<br>");
			out.println(user_id3+"님 환영합니다");
		} else {
			out.println("세션 설정이 실패했습니다");
		}
	%>
</body>
</html>