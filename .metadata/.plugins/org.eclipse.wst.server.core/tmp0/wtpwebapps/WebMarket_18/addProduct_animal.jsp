<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>동물 등록</title>
</head>
<body>
	<%-- <fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > --%>
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 등록</h1>
<!-- 			<h1 class="display-3"><fmt:message key="title" /></h1> -->
		</div>
	</div>
	<div class="container">
		<div class="text-right"> 
			<!-- <a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a> -->
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>	
		<form name="newAnimal" action="./processAddProduct_Animal.jsp" 
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">동물 아이디</label>
				<div class="col-sm-3">
					<input type="text" id="productId"  name="productId"  class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 이름</label>
				<div class="col-sm-3">
					<input type="text" id="name"  name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 가격</label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice"  name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 설명</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 제조</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 카테고리</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 갯수</label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">동물 상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New" >새거 
					<input type="radio" name="condition" value="Old" >중고
					<input type="radio" name="condition" value="Refurbished" >재사용
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">사진</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록하기" >
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>
