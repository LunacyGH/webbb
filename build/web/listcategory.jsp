<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Category - ProductHub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-light">
    
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="#">ProductHub</a>
            <div class="ms-auto">
                <a href="./listProductController" class="btn btn-outline-primary btn-sm">
                    <i class="fas fa-box"></i> Products
                </a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h2 class="fw-bold text-dark">Category Management</h2>
                <p class="text-muted small">View and manage product categories</p>
            </div>
            <a href="newcategory.jsp" class="btn btn-primary">
                <i class="fas fa-plus"></i> Add New Category
            </a>
        </div>

        <c:if test="${requestScope.categories != null}">
            <div class="card shadow-sm">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>Type ID</th>
                                    <th>Category Name</th>
                                    <th>Memo</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.categories}" var="c">
                                    <tr>
                                        <td>${c.typeId}</td>
                                        <td>${c.categoryName}</td>
                                        <td>${c.memo}</td>
                                        <td>
                                            <div class="d-flex gap-2">
                                                <a href="./updateCategoryController?typeId=${c.typeId}" 
                                                   class="btn btn-sm btn-outline-primary">
                                                    <i class="fas fa-edit"></i> Edit
                                                </a>
                                                <a href="./deleteCategoryController?typeId=${c.typeId}" 
                                                   class="btn btn-sm btn-outline-danger">
                                                    <i class="fas fa-trash-alt"></i> Delete
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </c:if>
    </div>

    <!-- Footer -->
    <footer class="bg-white text-center py-3 mt-5 border-top">
        <p class="text-muted small mb-0">&copy; 2025 ProductHub. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
