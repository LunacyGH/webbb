<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <div class="min-h-screen p-6">
        <div class="max-w-4xl mx-auto">
            <!-- Header Section -->
            <div class="mb-8">
                <h1 class="text-3xl font-semibold text-gray-800">Update Product</h1>
            </div>

            <!-- Form Section -->
            <div class="bg-white rounded-xl shadow-sm overflow-hidden">
                <div class="p-6">
                    <form action="./updateProductController" method="post" class="space-y-6">
                        <!-- Product ID -->
                        <div>
                            <label for="product_id" class="block text-sm font-medium text-gray-700 mb-2">Product ID</label>
                            <input id="product_id" name="product_id" type="text" value="${productToUpdate.productId}" 
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all" readonly>
                        </div>

                        <!-- Product Name -->
                        <div>
                            <label for="productName" class="block text-sm font-medium text-gray-700 mb-2">Product Name</label>
                            <input id="productName" name="productName" type="text" value="${productToUpdate.productName}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Product Image -->
                        <div>
                            <label for="productImage" class="block text-sm font-medium text-gray-700 mb-2">Product Image</label>
                            <input id="productImage" name="productImage" type="text" value="${productToUpdate.producImage}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Brief -->
                        <div>
                            <label for="brief" class="block text-sm font-medium text-gray-700 mb-2">Brief</label>
                            <textarea id="brief" name="brief" rows="3" required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">${productToUpdate.brief}</textarea>
                        </div>

                        <!-- Posted Date -->
                        <div>
                            <label for="postedDate" class="block text-sm font-medium text-gray-700 mb-2">Posted Date</label>
                            <input id="postedDate" name="postedDate" type="date" value="${productToUpdate.postDate}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Type ID -->
                        <div>
                            <label for="typeId" class="block text-sm font-medium text-gray-700 mb-2">Type ID</label>
                            <input id="typeId" name="typeId" type="text" value="${productToUpdate.type.getTypeId()}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Account -->
                        <div>
                            <label for="account" class="block text-sm font-medium text-gray-700 mb-2">Account</label>
                            <input id="account" name="account" type="text" value="${productToUpdate.account.getAccount()}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Unit -->
                        <div>
                            <label for="unit" class="block text-sm font-medium text-gray-700 mb-2">Unit</label>
                            <input id="unit" name="unit" type="text" value="${productToUpdate.unit}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Price -->
                        <div>
                            <label for="price" class="block text-sm font-medium text-gray-700 mb-2">Price</label>
                            <input id="price" name="price" type="number" step="0.01" value="${productToUpdate.price}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Discount -->
                        <div>
                            <label for="discount" class="block text-sm font-medium text-gray-700 mb-2">Discount</label>
                            <input id="discount" name="discount" type="number" step="0.01" value="${productToUpdate.discount}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Submit Button -->
                        <div>
                            <button type="submit" class="w-full px-4 py-2 bg-gray-800 text-white rounded-lg hover:bg-gray-700 transition-colors">
                                Update Product
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
