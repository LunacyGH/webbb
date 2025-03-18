<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*, model.Product, model.dao.ProductDAO" %>

<%
    response.setContentType("application/json");
    ProductDAO productDAO = new ProductDAO();
    List<Product> allProducts = productDAO.listAll();
    
    StringBuilder json = new StringBuilder("[");
    for (int i = 0; i < allProducts.size(); i++) {
        Product p = allProducts.get(i);
        json.append("{" +
            "\"id\": \"" + p.getProductId() + "\"," +
            "\"name\": \"" + p.getProductName() + "\"," +
            "\"price\": " + p.getPrice() + "," +
            "\"discount\": " + p.getDiscount() + "}" + (i < allProducts.size() - 1 ? "," : "")
        );
    }
    json.append("]");
    out.print(json.toString());
%>
