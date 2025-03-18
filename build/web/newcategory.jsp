<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Category</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <div class="min-h-screen p-6">
        <div class="max-w-2xl mx-auto">
            <!-- Header Section -->
            <div class="mb-8">
                <h1 class="text-3xl font-semibold text-gray-800">Add New Category</h1>
            </div>

            <!-- Form Section -->
            <div class="bg-white rounded-xl shadow-sm overflow-hidden">
                <div class="p-6">
                    <form action="./newCategoryController" method="post">
                        <!-- Type ID Field -->
                        <div class="mb-6">
                            <label for="typeId" class="block text-sm font-medium text-gray-700 mb-2">
                                Type
                            </label>
                            <input type="text" 
                                   id="typeId" 
                                   name="typeId" 
                                   required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Category Name Field -->
                        <div class="mb-6">
                            <label for="categoryName" class="block text-sm font-medium text-gray-700 mb-2">
                                Category Name
                            </label>
                            <input type="text" 
                                   id="categoryName" 
                                   name="categoryName" 
                                   required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Memo Field -->
                        <div class="mb-6">
                            <label for="memo" class="block text-sm font-medium text-gray-700 mb-2">
                                Memo
                            </label>
                            <textarea id="memo" 
                                      name="memo" 
                                      rows="3"
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all"></textarea>
                        </div>

                        <!-- Submit Button -->
                        <div>
                            <button type="submit" 
                                    class="w-full px-4 py-2 bg-gray-800 text-white rounded-lg hover:bg-gray-700 transition-colors">
                                Save Category
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>