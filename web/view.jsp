<%-- 
    Document   : view
    Created on : Feb 26, 2020, 8:57:20 AM
    Author     : Blue
--%>

<%@page import="h.dtos.BookDTO"%>
<%@page import="h.dtos.CartDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CartDTO shoppingCart = (CartDTO) session.getAttribute("cart");
            if (shoppingCart == null) {
        %>
        <h2>
            Your shopping cart is empty!
        </h2>
        <%
        } else {
        %>
        <h1><%=shoppingCart.getCustomerName()%>'s cart!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Book Name</th>
                    <th>Book Price</th>
                    <th>Quantity</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 0;
                    for (BookDTO dto : shoppingCart.getShoppingCart().values()) {
                        count++;
                %>

                <tr>
            <form action="MainController" method="POST">
                    <td><%=count%></td>
                    <td><%= dto.getName()%></td>
                    <td><%= dto.getPrice()%></td>
                    <td>
                        <input type="text" name="txtQuantity" value="<%= dto.getQuantity()%>"/>
                        
                    </td>
                    <td>
                        <input type="hidden" name="txtID" value="<%= dto.getId()%>"/>
                        <input type="submit" value="Delete" name="action"/>
                    </td>
                    <td>
                        
                        <input type="submit" name="action" value="Update"/>
                    </td>
                    </form>
                </tr>
                
                <%
                    }
                %>
                <tr>
                    <td></td>
                    <td>
                        <a href="index.jsp">Continue shopping</a>
                    </td>
                    <td>
                        <%= shoppingCart.getTotal() %>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>

        </table>



        <%
            }
        %>


    </body>
</html>
