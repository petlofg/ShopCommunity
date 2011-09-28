<%-- 
    Document   : createUser
    Created on : 2011-sep-28, 12:03:48
    Author     : Robin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User creation</title>
    </head>
    <body>
        <h1>Hello New User!</h1>
        <form action="CreateUser.do">
            Email <input name="email" type="text"/><br/>
            Password <input name="password" type="password"/><br/>
            Name <input name="name" type="text"/><br/>
            Adress <input name="adress" type="text"/><br/>
            Postal Code <input name="postalCode" type="text"/><br/>
            City <input name="city" type="text"/><br/>
            Phone No. <input name="phoneNumber" type="text"/><br/>
            <input type="submit" value="Submit"/>
        </form> 
    </body>
</html>
