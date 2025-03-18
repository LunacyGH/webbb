<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*, model.Product, model.dao.ProductDAO" %>

<%
    response.setContentType("application/json");
    String category = request.getParameter("category");
    String minPrice = request.getParameter("minPrice");
    String maxPrice = request.getParameter("maxPrice");
    String discount = request.getParameter("discount");
    String sort = request.getParameter("sort");

    ProductDAO productDAO = new ProductDAO();
    List<Product> filteredProducts = productDAO.listAll(); // Thay thế filterProducts bằng listAll()
    
    StringBuilder json = new StringBuilder("[");
    for (int i = 0; i < filteredProducts.size(); i++) {
        Product p = filteredProducts.get(i);
        json.append("{" +
            "\"id\": \"" + p.getProductId() + "\"," +
            "\"name\": \"" + p.getProductName() + "\"," +
            "\"price\": " + p.getPrice() + "," +
            "\"discount\": " + p.getDiscount() + "}" + (i < filteredProducts.size() - 1 ? "," : "")
        );
    }
    json.append("]");
    out.print(json.toString());
%>
