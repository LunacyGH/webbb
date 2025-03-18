<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Category</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <div class="min-h-screen p-6">
        <div class="max-w-3xl mx-auto">
            <!-- Header Section -->
            <div class="mb-8">
                <h1 class="text-3xl font-semibold text-gray-800">Update Category</h1>
            </div>

            <!-- Form Section -->
            <div class="bg-white rounded-xl shadow-sm overflow-hidden">
                <div class="p-6">
                    <form action="updateCategoryController" method="post" class="space-y-6">
                        <!-- Type ID -->
                        <div>
                            <label for="typeId" class="block text-sm font-medium text-gray-700 mb-2">Type ID</label>
                            <input id="typeId" type="text" name="typeId" value="${categoryToUpdate.typeId}"
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all" readonly>
                        </div>

                        <!-- Category Name -->
                        <div>
                            <label for="categoryName" class="block text-sm font-medium text-gray-700 mb-2">Category Name</label>
                            <input id="categoryName" type="text" name="categoryName" value="${categoryToUpdate.categoryName}" required
                                   class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                        </div>

                        <!-- Memo -->
                        <div>
                            <label for="memo" class="block text-sm font-medium text-gray-700 mb-2">Memo</label>
                            <textarea id="memo" name="memo" rows="3"
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">${categoryToUpdate.memo}</textarea>
                        </div>

                        <!-- Submit and Back Buttons -->
                        <div class="space-y-2">
                            <button type="submit" 
                                    class="w-full px-4 py-2 bg-gray-800 text-white rounded-lg hover:bg-gray-700 transition-colors">
                                Update Category
                            </button>
                            <a href="./listCategoryController" 
                               class="block text-center w-full px-4 py-2 bg-gray-100 text-gray-800 rounded-lg hover:bg-gray-200 transition-colors">
                                Back to List
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
