<%-- 
    Document   : index
    Created on : Feb 25, 2020, 6:46:28 PM
    Author     : Blue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Book Store</h1>
        <form action="MainController" method="POST">
            Please choose your book:
            <select name="listBook">
                <option value="B001-Java Desktop-100">Java Desktop</option>
                <option value="B002-Java Web-200">Java Web</option>
                <option value="B003-Mobile-300">Mobile</option>
                <option value="B004-XML-400">XML</option>
                <option value="B005-Capstone-500">Capstone</option>
            </select>
            <input type="submit" value="Add to Cart" name="action"/>
        </form>
        <a href="view.jsp">View Cart</a>
    </body>
</html>
