<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-light">
    
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <!-- Card Product Details -->
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center">
                        <h3 class="mb-0"><i class="fas fa-box-open"></i> Product Details</h3>
                    </div>
                    
                    <div class="card-body">
                        <div class="row">
                            <!-- Image Section -->
                            <div class="col-md-5 text-center">
                                <img src="/ProductInformation${productDetail.producImage}" 
                                     class="img-fluid rounded shadow-sm" 
                                     alt="${productDetail.productName}">
                            </div>

                            <!-- Details Section -->
                            <div class="col-md-7">
                                <h4 class="text-primary fw-bold">${productDetail.productName}</h4>
                                <p class="text-muted">${productDetail.brief}</p>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"><strong>Product ID:</strong> ${productDetail.productId}</li>
                                    <li class="list-group-item"><strong>Post Date:</strong> ${productDetail.postDate}</li>
                                    <li class="list-group-item"><strong>Type:</strong> ${productDetail.type.getTypeId()}</li>
                                    <li class="list-group-item"><strong>Account:</strong> ${productDetail.account.getAccount()}</li>
                                    <li class="list-group-item"><strong>Unit:</strong> ${productDetail.unit}</li>
                                    <li class="list-group-item"><strong>Price:</strong> <span class="text-success fw-bold">$${productDetail.price}</span></li>
                                    <li class="list-group-item"><strong>Discount:</strong> <span class="text-danger">${productDetail.discount}%</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer text-center">
                        <a href="./listProductController" class="btn btn-outline-secondary">
                            <i class="fas fa-arrow-left"></i> Back to Products
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
