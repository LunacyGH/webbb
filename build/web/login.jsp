<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ProductHub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- Logo & Intro -->
                <div class="text-center mb-4">
                    <h1 class="text-primary fw-bold">ProductHub</h1>
                    <p class="text-muted">Manage your product portfolio with ease</p>
                </div>

                <!-- Login Card -->
                <div class="card shadow-lg border-0">
                    <div class="card-body p-4">
                        <div class="text-center mb-3">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary text-white rounded-circle" 
                                style="width: 50px; height: 50px;">
                                <i class="fas fa-user-circle fs-4"></i>
                            </div>
                            <h4 class="fw-bold mt-2">Welcome Back</h4>
                            <p class="text-muted">Sign in to continue</p>
                        </div>

                        <!-- Login Form -->
                        <form action="./loginController" method="post">
                            <div class="mb-3">
                                <label for="account" class="form-label">Account</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" id="account" name="account" required
                                           class="form-control" placeholder="Enter your account">
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" id="password" name="pass" required
                                           class="form-control" placeholder="Enter your password">
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">
                                <i class="fas fa-sign-in-alt"></i> Sign In
                            </button>
                        </form>

                        <div class="text-center mt-3">
                            <a href="./listProductController" class="text-decoration-none text-primary">
                                <i class="fas fa-arrow-left"></i> Return to Products
                            </a>
                        </div>
                    </div>

                    <div class="card-footer text-center bg-light">
                        <p class="text-muted mb-0">
                            Don't have an account? <a href="#" class="text-primary">Contact admin</a>
                        </p>
                    </div>
                </div>

                <div class="text-center text-muted mt-4">
                    &copy; 2025 ProductHub. All rights reserved.
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
