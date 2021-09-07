<%-- 
    Document   : SearchStudentForm
    Created on : Dec 2, 2019, 7:57:12 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Search Student Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Search Student Form</h1>
        <form action="SearchStudent" method="post">
            <table>
                <tr><td>Rollno:</td><td><input type="number" name="rollno" required/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="Search Student"/></td></tr>
            </table>
        </form>
    </body>
</html>