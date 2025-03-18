<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product - ProductHub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-indigo-50 to-blue-100 min-h-screen py-12 px-4 sm:px-6">
    <div class="max-w-4xl mx-auto">
        <!-- Header with Navigation -->
        <div class="flex justify-between items-center mb-8">
            <div>
                <h1 class="text-3xl font-bold text-gray-800">Create New Product</h1>
                <p class="text-gray-600 mt-1">Add a new product to your portfolio</p>
            </div>
            <a href="./listProductController" class="flex items-center text-indigo-600 hover:text-indigo-800 font-medium">
                <i class="fas fa-arrow-left mr-2"></i> Back to Products
            </a>
        </div>
        
        <!-- Form Card -->
        <div class="bg-white rounded-2xl shadow-xl overflow-hidden">
            <!-- Progress Bar -->
            <div class="w-full bg-indigo-600 h-2"></div>
            
            <div class="p-8">
                <form action="./createProductController" method="post" class="space-y-8">
                    <!-- Form Sections -->
                    <div class="space-y-8">
                        <!-- Basic Information Section -->
                        <div>
                            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                                <span class="bg-indigo-100 text-indigo-600 w-8 h-8 rounded-full inline-flex items-center justify-center mr-3">
                                    <i class="fas fa-info"></i>
                                </span>
                                Basic Information
                            </h2>
                            
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <!-- Product ID -->
                                <div class="space-y-2">
                                    <label for="productId" class="block text-sm font-medium text-gray-700">
                                        Product ID <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-fingerprint text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="text" 
                                            id="productId" 
                                            name="productId" 
                                            placeholder="Enter unique product ID"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                                
                                <!-- Product Name -->
                                <div class="space-y-2">
                                    <label for="productName" class="block text-sm font-medium text-gray-700">
                                        Product Name <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-tag text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="text" 
                                            id="productName" 
                                            name="productName" 
                                            placeholder="Enter product name"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Details Section -->
                        <div>
                            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                                <span class="bg-indigo-100 text-indigo-600 w-8 h-8 rounded-full inline-flex items-center justify-center mr-3">
                                    <i class="fas fa-list-ul"></i>
                                </span>
                                Product Details
                            </h2>
                            
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <!-- Product Image URL -->
                                <div class="space-y-2">
                                    <label for="productImage" class="block text-sm font-medium text-gray-700">
                                        Product Image URL <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-image text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="text" 
                                            id="productImage" 
                                            name="productImage" 
                                            placeholder="Enter image path"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                                
                                <!-- Posted Date -->
                                <div class="space-y-2">
                                    <label for="postedDate" class="block text-sm font-medium text-gray-700">
                                        Posted Date <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-calendar text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="date" 
                                            id="postedDate" 
                                            name="postedDate" 
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                            
                                <!-- Type ID -->
                                <div class="space-y-2">
                                    <label for="typeId" class="block text-sm font-medium text-gray-700">
                                        Type ID <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-sitemap text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="number" 
                                            id="typeId" 
                                            name="typeId" 
                                            placeholder="Enter type ID"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                                
                                <!-- Account -->
                                <div class="space-y-2">
                                    <label for="account" class="block text-sm font-medium text-gray-700">
                                        Account <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-user text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="text" 
                                            id="account" 
                                            name="account" 
                                            placeholder="Enter account"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Pricing Section -->
                        <div>
                            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                                <span class="bg-indigo-100 text-indigo-600 w-8 h-8 rounded-full inline-flex items-center justify-center mr-3">
                                    <i class="fas fa-dollar-sign"></i>
                                </span>
                                Pricing Information
                            </h2>
                            
                            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                                <!-- Unit -->
                                <div class="space-y-2">
                                    <label for="unit" class="block text-sm font-medium text-gray-700">
                                        Unit <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-box text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="text" 
                                            id="unit" 
                                            name="unit" 
                                            placeholder="e.g. piece, kg, set"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                                
                                <!-- Price -->
                                <div class="space-y-2">
                                    <label for="price" class="block text-sm font-medium text-gray-700">
                                        Price <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-money-bill text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="number" 
                                            id="price" 
                                            name="price" 
                                            step="0.01" 
                                            placeholder="Enter price"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                                
                                <!-- Discount -->
                                <div class="space-y-2">
                                    <label for="discount" class="block text-sm font-medium text-gray-700">
                                        Discount (%) <span class="text-red-500">*</span>
                                    </label>
                                    <div class="relative">
                                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <i class="fas fa-percent text-gray-400"></i>
                                        </div>
                                        <input 
                                            type="number" 
                                            id="discount" 
                                            name="discount" 
                                            step="0.01" 
                                            placeholder="Enter discount %"
                                            required
                                            class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Description Section -->
                        <div>
                            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                                <span class="bg-indigo-100 text-indigo-600 w-8 h-8 rounded-full inline-flex items-center justify-center mr-3">
                                    <i class="fas fa-align-left"></i>
                                </span>
                                Product Description
                            </h2>
                            
                            <!-- Brief Description -->
                            <div class="space-y-2">
                                <label for="brief" class="block text-sm font-medium text-gray-700">
                                    Brief Description <span class="text-red-500">*</span>
                                </label>
                                <div class="relative">
                                    <div class="absolute top-3 left-3 flex items-start pointer-events-none">
                                        <i class="fas fa-quote-left text-gray-400"></i>
                                    </div>
                                    <textarea 
                                        id="brief" 
                                        name="brief" 
                                        rows="4" 
                                        placeholder="Enter a brief description of the product"
                                        required
                                        class="w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                                    ></textarea>
                                </div>
                                <p class="text-xs text-gray-500 mt-1">Provide a concise description that highlights key features of the product.</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Form Actions -->
                    <div class="pt-5 border-t border-gray-200">
                        <div class="flex justify-end space-x-4">
                            <a 
                                href="./listProductController"
                                class="px-6 py-2 bg-white border border-gray-300 rounded-lg text-gray-700 font-medium hover:bg-gray-50 shadow-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150"
                            >
                                Cancel
                            </a>
                            <button 
                                type="submit"
                                class="px-6 py-2 bg-indigo-600 text-white rounded-lg font-medium hover:bg-indigo-700 shadow-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150"
                            >
                                <i class="fas fa-save mr-2"></i> Create Product
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <!-- Help Note -->
        <div class="mt-8 bg-blue-50 border border-blue-200 rounded-lg p-4 flex items-start">
            <div class="flex-shrink-0 mt-0.5">
                <i class="fas fa-info-circle text-blue-500"></i>
            </div>
            <div class="ml-3">
                <h3 class="text-sm font-medium text-blue-800">Need Help?</h3>
                <div class="mt-2 text-sm text-blue-700">
                    <p>All fields marked with <span class="text-red-500">*</span> are required. Make sure to provide accurate information to ensure proper product listing.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>