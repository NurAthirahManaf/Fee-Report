<%-- 
    Document   : viewStudent
    Created on : Dec 2, 2019, 8:30:30 PM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="bean.StudentBean"%>
<%@page import="dao.StudentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="assets/css/addemployee.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
         <!--js-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="assets/js/addemployee.js"></script>
        
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <%@ include file="navaccountant.jsp" %> 
         
         <%
           
            List<StudentBean> list=StudentDao.getAllRecords();
            request.setAttribute("list", list);
        %>
        
        <!--table container-->
            <div class="container">
              <div class="table-wrapper">
                  <h2>List of Student</h2><br>
               <table class="table table-striped table-hover">
                   
                <thead>
                    <tr>
                       <th>Roll No.</th>
                       <th>Name</th>
                       <th>Gender</th>
                       <th>Course</th>
                       <th>Fee</th>
                       <th>Paid</th>
                       <th>Due</th>
                       <th>Address</th>
                       <th>Phone</th>
                       <th>Email</th>
            
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach items="${list}" var="u">
                         <tr>
                            <td>${u.getRollno()}</td>
                            <td>${u.getName()}</td>
                            <td>${u.getSex()}</td>
                            <td>${u.getCourse()}</td>
                            <td>${u.getFee()}</td>
                            <td>${u.getPaid()}</td>
                            <td>${u.getDue()}</td>
                            <td>${u.getAddress()}</td>
                            <td>${u.getContact()}</td>
                            <td>${u.getEmail()}</td>             
                            <td>
                                <a href="EditStudentForm?rollno=<c:out value='${u.getRollno()}'/>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="DeleteStudent?rollno=<c:out value='${u.getRollno()}'/>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
             
                            </td>
                         
                         </tr>
                    </c:forEach>
                </tbody>
            </table><!--end table-->
            
                </div><!-- end table wrapper-->
            </div><!-- end table contaniner-->
    </body>
</html>
