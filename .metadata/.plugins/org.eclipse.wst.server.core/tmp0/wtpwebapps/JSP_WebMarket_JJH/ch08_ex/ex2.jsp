<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var regExp =/Java/i;
		var str = document.loginForm.name.value;
		var result =regExp.exec(str);  //exec
		alert(result[0]);   //번호 ?
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