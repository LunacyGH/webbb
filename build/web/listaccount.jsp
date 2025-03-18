<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Account - ProductHub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-light">
    
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="#">ProductHub</a>
            <div class="ms-auto">
                <a href="addaccount.jsp" class="btn btn-outline-primary btn-sm me-2">
                    <i class="fas fa-user-plus"></i> Create Account
                </a>
                <a href="login.jsp" class="btn btn-outline-danger btn-sm">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-4">
        <h2 class="fw-bold text-dark">List of Accounts</h2>
        <p class="text-muted small">Manage user accounts in the system</p>

        <c:if test="${requestScope.accounts != null}">
            <div class="card shadow-sm">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>Account</th>
                                    <th>Full Name</th>
                                    <th>Birth Date</th>
                                    <th>Gender</th>
                                    <th>Phone</th>
                                    <th>Status</th>
                                    <th>Role</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.accounts}" var="a">
                                    <tr>
                                        <td>${a.account}</td>
                                        <td>${a.lastName} ${a.firstName}</td>
                                        <td>${a.birthday}</td>
                                        <td>${a.gender}</td>
                                        <td>${a.phone}</td>
                                        <td>
                                            <span class="badge ${a.isUse ? 'bg-success' : 'bg-danger'}">
                                                ${a.isUse ? 'Active' : 'Inactive'}
                                            </span>
                                        </td>
                                        <td>${a.roleInSystem}</td>
                                        <td>
                                            <div class="d-flex gap-2">
                                                <a href="./updateAccountController?account=${a.account}" 
                                                   class="btn btn-sm btn-outline-primary">
                                                    <i class="fas fa-edit"></i> Edit
                                                </a>
                                                <a href="./activeController?account=${a.account}" 
                                                   class="btn btn-sm btn-outline-warning">
                                                    <i class="fas fa-toggle-on"></i> Toggle Active
                                                </a>
                                                <a href="./deleteAccountController?account=${a.account}" 
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
