<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Portfolio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-light">
    
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="#">Product Center</a>
            <div class="d-flex align-items-center">
                <c:if test="${not empty sessionScope.user}">
                    <span class="me-3 text-muted">Welcome, <strong class="text-primary">${sessionScope.user.getFirstName()}</strong></span>
                </c:if>
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <a href="createProduct.jsp" class="btn btn-primary btn-sm me-2">
                            <i class="fas fa-plus"></i> New Product
                        </a>
                        <a href="./listCategoryController" class="btn btn-info btn-sm me-2 text-white">
                            <i class="fas fa-tags"></i> Categories
                        </a>
                        <a href="login.jsp" class="btn btn-secondary btn-sm">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a href="login.jsp" class="btn btn-primary btn-sm">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <header class="mb-4 text-center">
            <h1 class="fw-bold text-dark">Product Portfolio</h1>
            <p class="text-muted">Browse our collection of high-quality products</p>
        </header>

        <c:if test="${requestScope.products != null}">
            <div class="row">
                <c:forEach items="${requestScope.products}" var="p">
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                        <div class="card shadow-sm">
                            <div class="position-relative">
                                <img src="/ProductInformation${p.producImage}" class="card-img-top" alt="${p.productName}">
                                <c:if test="${p.discount > 0}">
                                    <span class="badge bg-danger position-absolute top-0 end-0 m-2">
                                        ${p.discount}% OFF
                                    </span>
                                </c:if>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">${p.productName}</h5>
                                <p class="card-text text-muted small">${p.brief}</p>

                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="text-primary fw-bold">$${p.price} <small class="text-muted">/ ${p.unit}</small></span>
                                    <span class="badge bg-secondary">ID: ${p.productId}</span>
                                </div>

                                <ul class="list-unstyled small text-muted mt-3">
                                    <li><i class="far fa-calendar-alt"></i> Posted: ${p.postDate}</li>
                                    <li><i class="far fa-bookmark"></i> Type: ${p.type.getTypeId()}</li>
                                    <li><i class="far fa-user"></i> Account: ${p.account.getAccount()}</li>
                                </ul>

                                <div class="d-grid gap-2 mt-3">
                                    <a href="./productdetailController?product_id=${p.productId}" class="btn btn-outline-primary btn-sm">
                                        <i class="fas fa-info-circle"></i> Details
                                    </a>
                                    <c:if test="${not empty sessionScope.user}">
                                        <a href="./updateProductController?product_id=${p.productId}" class="btn btn-outline-warning btn-sm">
                                            <i class="fas fa-edit"></i> Edit
                                        </a>
                                        <a href="./deleteProductController?product_id=${p.productId}" class="btn btn-outline-danger btn-sm">
                                            <i class="fas fa-trash-alt"></i> Delete
                                        </a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-light py-4 mt-5">
        <div class="container text-center">
            <h5 class="fw-bold text-primary">ProductHub</h5>
            <p class="small text-muted">Manage your product portfolio with ease</p>
            <div class="d-flex justify-content-center gap-3">
                <a href="#" class="text-light"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="text-light"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-light"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="mt-3 small text-muted">
                &copy; 2025 ProductHub. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
