<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, model.Product, model.dao.ProductDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container mt-4">
        <h1 class="text-center">Product List</h1>
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Home</a>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item"><a class="nav-link" href="listproducts.jsp">Products</a></li>
                        <li class="nav-item"><a class="nav-link" href="search.jsp">Search</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="row">
            <%
                ProductDAO dao = new ProductDAO();
                List<Product> products = dao.listAll();
                for (Product p : products) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%= p.getProductName() %></h5>
                        <p class="card-text">Price: $<%= p.getPrice() %></p>
                        <a href="productdetail.jsp?product_id=<%= p.getProductId() %>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
