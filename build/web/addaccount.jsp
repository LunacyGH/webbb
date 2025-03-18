<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Add New Account</title>
   <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
   <div class="min-h-screen p-6">
       <div class="max-w-4xl mx-auto">
           <!-- Header Section -->
           <div class="mb-8">
               <h1 class="text-3xl font-semibold text-gray-800">Add New Account</h1>
           </div>

           <!-- Form Section -->
           <div class="bg-white rounded-xl shadow-sm overflow-hidden">
               <div class="p-6">
                   <form action="./addAccountController" method="post" class="space-y-6">
                       <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                           <!-- Account -->
                           <div>
                               <label for="account" class="block text-sm font-medium text-gray-700 mb-2">
                                   Account
                               </label>
                               <input type="text" 
                                      id="account" 
                                      name="account" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- Password -->
                           <div>
                               <label for="password" class="block text-sm font-medium text-gray-700 mb-2">
                                   Password
                               </label>
                               <input type="password" 
                                      id="password" 
                                      name="password" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- First Name -->
                           <div>
                               <label for="firstname" class="block text-sm font-medium text-gray-700 mb-2">
                                   First Name
                               </label>
                               <input type="text" 
                                      id="firstname" 
                                      name="firstname" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- Last Name -->
                           <div>
                               <label for="lastname" class="block text-sm font-medium text-gray-700 mb-2">
                                   Last Name
                               </label>
                               <input type="text" 
                                      id="lastname" 
                                      name="lastname" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- Phone -->
                           <div>
                               <label for="phone" class="block text-sm font-medium text-gray-700 mb-2">
                                   Phone
                               </label>
                               <input type="tel" 
                                      id="phone" 
                                      name="phone" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- Birthday -->
                           <div>
                               <label for="birthday" class="block text-sm font-medium text-gray-700 mb-2">
                                   Birth Day
                               </label>
                               <input type="date" 
                                      id="birthday" 
                                      name="birthday" 
                                      required
                                      class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                           </div>

                           <!-- Gender -->
                           <div>
                               <label class="block text-sm font-medium text-gray-700 mb-2">
                                   Gender
                               </label>
                               <div class="space-x-4">
                                   <label class="inline-flex items-center">
                                       <input type="radio" 
                                              name="gender" 
                                              value="true" 
                                              required
                                              class="form-radio text-gray-600 focus:ring-gray-500">
                                       <span class="ml-2">Male</span>
                                   </label>
                                   <label class="inline-flex items-center">
                                       <input type="radio" 
                                              name="gender" 
                                              value="false" 
                                              required
                                              class="form-radio text-gray-600 focus:ring-gray-500">
                                       <span class="ml-2">Female</span>
                                   </label>
                               </div>
                           </div>

                           <!-- Role -->
                           <div>
                               <label for="roleInSystem" class="block text-sm font-medium text-gray-700 mb-2">
                                   Role in System
                               </label>
                               <select id="roleInSystem" 
                                       name="roleInSystem" 
                                       required
                                       class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-gray-200 focus:border-gray-300 outline-none transition-all">
                                   <option value="">Select a role</option>
                                   <option value="1">Admin</option>
                                   <option value="2">Manage</option>
                               </select>
                           </div>
                       </div>

                       <!-- Submit Button -->
                       <div>
                           <button type="submit" 
                                   class="w-full px-4 py-2 bg-gray-800 text-white rounded-lg hover:bg-gray-700 transition-colors">
                               Create Account
                           </button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
</body>
</html>