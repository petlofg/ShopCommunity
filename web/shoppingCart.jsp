<%-- 
    Document   : shoppingCart
    Created on : 2011-sep-28, 09:58:06
    Author     : Robin
--%>

<%@page import="com.webshop.domain.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Shoppingcart</title>
    </head>
    <body>
        <h1>Hello Shoppingcart!</h1>
        <form>
            <% //for(every item in list:)%>
            <textarea id="quantity"><% item.getQuantity %></textarea>
            <button id="removeItem">Remove</button>
            <% //} %>
            <button id="submit">Submit quantity changes !--NotYETImpled--!</button>
        </form>
    </body>
</html>
