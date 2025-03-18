<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Account</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <div class="min-h-screen p-6">
        <div class="max-w-4xl mx-auto">
            <!-- Header Section -->
            <div class="mb-8">
                <h1 class="text-3xl font-semibold text-gray-800">Update Account</h1>
            </div>

            <!-- Form Section -->
            <div class="bg-white rounded-xl shadow-sm overflow-hidden">
                <div class="p-6">
                    <form action="updateAccountController" method="post" class="space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <!-- Account -->
                            <div>
                                <label for="account" class="block text-sm font-medium text-gray-700 mb-2">Account</label>
                                <input id="account" type="text" name="account" value="${accountToUpdate.account}" 
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all" readonly>
                            </div>

                            <!-- Password -->
                            <div>
                                <label for="pass" class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                                <input id="pass" type="password" name="pass" value="${accountToUpdate.pass}" required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                            </div>

                            <!-- First Name -->
                            <div>
                                <label for="firstName" class="block text-sm font-medium text-gray-700 mb-2">First Name</label>
                                <input id="firstName" type="text" name="firstName" value="${accountToUpdate.firstName}" required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                            </div>

                            <!-- Last Name -->
                            <div>
                                <label for="lastName" class="block text-sm font-medium text-gray-700 mb-2">Last Name</label>
                                <input id="lastName" type="text" name="lastName" value="${accountToUpdate.lastName}" required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                            </div>

                            <!-- Phone -->
                            <div>
                                <label for="phone" class="block text-sm font-medium text-gray-700 mb-2">Phone</label>
                                <input id="phone" type="tel" name="phone" value="${accountToUpdate.phone}" required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                            </div>

                            <!-- Birthday -->
                            <div>
                                <label for="birthday" class="block text-sm font-medium text-gray-700 mb-2">Birth Day</label>
                                <input id="birthday" type="date" name="birthday" value="${accountToUpdate.birthday}" required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                            </div>

                            <!-- Gender -->
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-2">Gender</label>
                                <div class="space-x-4">
                                    <label class="inline-flex items-center">
                                        <input type="radio" name="gender" value="true" ${accountToUpdate.gender ? 'checked' : ''} required
                                               class="form-radio text-gray-600 focus:ring-gray-500">
                                        <span class="ml-2">Male</span>
                                    </label>
                                    <label class="inline-flex items-center">
                                        <input type="radio" name="gender" value="false" ${!accountToUpdate.gender ? 'checked' : ''} required
                                               class="form-radio text-gray-600 focus:ring-gray-500">
                                        <span class="ml-2">Female</span>
                                    </label>
                                </div>
                            </div>

                            <!-- Role -->
                            <div>
                                <label for="roleInSystem" class="block text-sm font-medium text-gray-700 mb-2">Role in System</label>
                                <select id="roleInSystem" name="roleInSystem" required
                                        class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                                    <option value="0" ${accountToUpdate.roleInSystem == 0 ? 'selected' : ''}>Admin</option>
                                    <option value="1" ${accountToUpdate.roleInSystem == 1 ? 'selected' : ''}>User</option>
                                    <option value="2" ${accountToUpdate.roleInSystem == 2 ? 'selected' : ''}>Manager</option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div>
                            <button type="submit" 
                                    class="w-full px-4 py-2 bg-gray-800 text-white rounded-lg hover:bg-gray-700 transition-colors">
                                Update Account
                            </button>
                            <a href="./listAccountController" 
                               class="block mt-2 text-center w-full px-4 py-2 bg-gray-100 text-gray-800 rounded-lg hover:bg-gray-200 transition-colors">
                                Back to list
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
