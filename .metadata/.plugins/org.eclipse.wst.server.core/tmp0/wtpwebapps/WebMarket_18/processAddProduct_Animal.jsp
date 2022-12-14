<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\Users\\develop\\Desktop\\JPA\\WebMarket_18\\WebContent\\resources\\images"; //웹 어플리케이션상의 절대 경로
/* 	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로 */
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 10 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	
	//Enumberation 여러개의 파일을 처리하기 위해서 파일이다. 
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();  //동물을 하나 등록해도 하나의 객체가 된다 .
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;	  //preparedStatement --> 동적으로 집어넣는것 
	
	String sql = "insert into animal values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, manufacturer);
	pstmt.setLong(7, stock);
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)    //db 에 접근을 하고 다하면 반납을 한다 .
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("products_animal.jsp");
	
%>
	
