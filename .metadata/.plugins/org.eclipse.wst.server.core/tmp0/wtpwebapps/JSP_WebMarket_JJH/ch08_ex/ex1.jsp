<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var str = document.loginForm.name.value;
		if(!regExp.test(str)){
			alert("이름을 엉대소문자소 시작");
		}
	}
</script>
<body>
	<form name="loginForm">
		<p>	아 이 디 : <input type="text" name="name">
		<p>	<input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>