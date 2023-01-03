<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 28/12/2022
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/products">Back to products list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><label for="name"></label><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><label for="price"></label><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><label for="description"></label><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Manufacturer: </td>
                <td><label for="manufacturer"></label><input type="text" name="manufacturer" id="manufacturer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
