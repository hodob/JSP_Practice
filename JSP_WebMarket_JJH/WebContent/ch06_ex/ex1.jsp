<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>  radio , check box 확인하기,</h2>

<form action="#" name = "member" method ="post">
성별 : <input type  = "radio" name = "sex " value = "남성" checked> 남성
<input type  = "radio" name = "sex " value = "여성"> 여성
<br>
취미 : 독서<input type = "checkbox" name ="hobby1">
음악 <input type = "checkbox" name ="hobby2">
영화 <input type = "checkbox" name ="hobby3">

<br>
<select name = "city" size = "3">
<option value ="서울">서울 </option>
<option value ="부산">부산 </option>
<option value ="강남">강남 </option>
<option value ="대구">대구 </option>
<option value ="하와이">하와이 </option>
<option value ="일본">일본 </option>

</select>



</form>





</body>
</html>