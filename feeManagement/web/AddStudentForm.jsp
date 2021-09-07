<%-- 
    Document   : AddStudentForm
    Created on : Dec 2, 2019, 7:56:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Student Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       <h1>Add Student Form</h1>
       <form action="AddStudent" method="post">
            <table>
                <tr><td>RollNo:</td><td><input type="text" name="rollno" required/></td></tr>
                <tr><td>Name:</td><td><input type="text" name="name" required/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
                <tr><td>Sex:</td><td>
                <input type="radio" name="sex" value="male"/> Male
                <input type="radio" name="sex" value="female"/> Female
                </td></tr>
                <tr><td>Course:</td><td>
                <select name="course">
                    <option>School Of Computing</option>
                    <option>School of Civil Engineering</option>
                    <option>SChool Of Electrical Engineering</option>
                    <option>School Of Mechanical Engineering</option>
                    <option>School of Chemical and Energy Engineering</option>
                    <option>School Of Biomedical Engineering and Health Science</option>
                </select>
                </td></tr>
                <tr><td>Fee:</td><td><input type="number" name="fee"/></td></tr>
                <tr><td>Paid:</td><td><input type="number" name="paid"/></td></tr>
                <tr><td>Due:</td><td><input type="number" name="due"/></td></tr>
                <tr><td>Address:</td><td><textarea name="address" style="width:300px;height:100px;"></textarea></td></tr>
                <tr><td>Contact No:</td><td><input type="text" name="contact"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" class="btn btn-default" value="Save Student"/></td></tr>
            </table>
        </form>
    </body>
</html>