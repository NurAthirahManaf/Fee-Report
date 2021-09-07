<%-- 
    Document   : AccountantLoginForm
    Created on : Dec 2, 2019, 7:55:07 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accountant Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="AccountantLogin" method="post">
            <table>
                <tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" required/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="Login"/></td></tr>
        </table>
        </form>
    </body>
</html>
