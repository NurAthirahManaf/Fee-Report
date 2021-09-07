<%-- 
    Document   : AddAccountantForm
    Created on : Dec 2, 2019, 7:55:55 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Accountant Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="AddAccountant" method="post">
            <table>
                <tr><td>Id:</td><td><input type="text" name="id" required/></td></tr>
                <tr><td>Name:</td><td><input type="text" name="name" required/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" required/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
                <tr><td>Address:</td><td><textarea name="address" style="width:300px; height:100px;"></textarea></td></tr>
                <tr><td>Contact:</td><td><input type="text" name="contact"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="Add Accountant"/></td></tr>
        </table>
        </form>
    </body>
</html>
