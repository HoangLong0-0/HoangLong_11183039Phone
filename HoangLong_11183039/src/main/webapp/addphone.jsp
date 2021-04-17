<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 17-04-2021
  Time: 7:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add phone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/assets/custom.css">
</head>
<body>
<table class="w3-table w3-striped">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Brand</th>
        <th>Description</th>
    </tr>
    <c:forEach var="p" items="${requestScope.phones}">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>${p.brand_id.name}</td>
            <td>${p.description}</td>
        </tr>
    </c:forEach>
    <form action="addphone.jsp" method="post">

        <div class="container">
            <input type="text" placeholder="Enter name" name="name" required>
            <input type="text" placeholder="Enter price" name="price" required>
            <input type="text" placeholder="Enter description" name="description" required>
            <select name="brands" id="brand_id">
                <option value="1">Apple</option>
                <option value="2">Samsung</option>
                <option value="3">Nokia</option>
                <option value="4">Others</option>
            </select>
            <button type="submit">Add</button>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn">Reset</button>
        </div>
    </form>

</table>
</body>
</html>
