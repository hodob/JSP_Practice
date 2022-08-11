<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%> --%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>


<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
	/* 웹ㅇ 브라우져에서 URI 뒤에 주소 ? 뒤에 ID 속성 값을 가져왔음 */
			//예를 들면 상품 목록에서 상품의 객체를 하 나 선택시 해당 상품의 아이디입니다. 
			// ex P1234
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from product where P_id = ?"; 
	/* ? 의 의미는 스테이먼트 프리페어 스리페이, 동적으로 처리할것이냐 정적으로 처리할것이냐  */
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
 				<p><%=rs.getString("p_description")%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("p_id")%></span>
				<p><b>제조사</b> : <%=rs.getString("p_manufacturer")%>
				<p><b>분류</b> : <%=rs.getString("p_category")%>
				<p><b>재고 수</b> : <%=rs.getString("p_unitsInStock")%>
				<h4><%=rs.getString("p_unitPrice")%>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a> 
					<a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<%} %>
	<jsp:include page="footer.jsp" />
</body>
</html>
