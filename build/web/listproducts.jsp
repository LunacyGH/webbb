        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ page import="java.util.*, model.Product, model.dao.ProductDAO" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Product List</title>
            <link rel="stylesheet" href="assets/css/styles.css">
        </head>
        <body>
            <header>
                <h1>Product List</h1>
                <nav>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="listproducts.jsp">Products</a></li>
                        <li><a href="search.jsp">Search</a></li>
                    </ul>
                </nav>
            </header>
            <main>
                <h2>All Products</h2>
                <div class="product-grid">
                    <%
                        ProductDAO dao = new ProductDAO();
                        List<Product> products = dao.listAll();
                        for (Product p : products) {
                    %>
                    <div class="product">
                        <h3><%= p.getProductName() %></h3>
                        <p>Price: $<%= p.getPrice() %></p>
                        <a href="productdetail.jsp?product_id=<%= p.getProductId() %>">View Details</a>
                    </div>
                    <% } %>
                </div>
            </main>
            <footer>
                <p>&copy; 2025 Product Introduction</p>
            </footer>
        </body>
        </html>
