<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		if (loginForm.id.value == "") {
			alert("아이디를 입력해 주십시오.");
			loginForm.id.focus();
		} else {
			alert("아이디 : " + document.loginForm.id.value + "\n" + "비밀번호 : "
					+ document.loginForm.passwd.value);
		}
	}
</script>
<body>
	<form name="loginForm">
		<p>
			아 이 디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="password" name="passwd">
		<p>
			<input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>