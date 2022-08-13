<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("animals.jsp");
		return;
	}

	AnimalRepository dao2 = AnimalRepository.getInstance();
/* 	AnimalRepository dao2 = AnimalRepository.getInstance(); */


 	Animal product2 = dao2.getProductAnimalById(id);
 	System.out.println(id);
	System.out.println(product2);
 	
 	
	if (product2 == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Animal> goodsList = dao2.getAllProductsAnimal();
	Animal goods = new Animal();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getProductId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Animal> list = (ArrayList<Animal>) session.getAttribute("cartlist2");
	if (list == null) { 
		list = new ArrayList<Animal>();
		session.setAttribute("cartlist2", list);
	}

	int cnt = 0;
	Animal goodsQnt = new Animal();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("animal.jsp?id=" + id); 
%>