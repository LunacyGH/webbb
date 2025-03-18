<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*, model.Product, model.dao.ProductDAO" %>

<%
    response.setContentType("application/json");
    ProductDAO productDAO = new ProductDAO();
    List<Product> featuredProducts = productDAO.listAll(); // Đổi listFeatured() thành listAll()
    
    StringBuilder json = new StringBuilder("[");
    for (int i = 0; i < featuredProducts.size(); i++) {
        Product p = featuredProducts.get(i);
        json.append("{" +
            "\"id\": \"" + p.getProductId() + "\"," +
            "\"name\": \"" + p.getProductName() + "\"," +
            "\"price\": " + p.getPrice() + "}" + (i < featuredProducts.size() - 1 ? "," : "")
        );
    }
    json.append("]");
    out.print(json.toString());
%>