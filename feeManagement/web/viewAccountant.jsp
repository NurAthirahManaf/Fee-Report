<%-- 
    Document   : viewAccountant
    Created on : Dec 2, 2019, 9:48:41 PM
    Author     : User
--%>

<%@page import="dao.AccountantDao"%>
<%@page import="bean.AccountantBean"%>
<%@page import="java.util.List"%>
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
        <%@ include file="navadmin.jsp" %> 
         
         <%
           
            List<AccountantBean> list=AccountantDao.getAllRecords();
            request.setAttribute("list", list);
        %>
        
        <!--table container-->
            <div class="container">
              <div class="table-wrapper">
                  <h2>List of Accountant</h2><br>
               <table class="table table-striped table-hover">
                   
                <thead>
                    <tr>
                       <th>Id</th>
                       <th>Name</th>
                       <th>Email</th>
                       <th>Password</th>
                       <th>Address</th>
                       <th>Contact</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach items="${list}" var="u">
                         <tr>
                            <td>${u.getId()}</td>
                            <td>${u.getName()}</td>
                            <td>${u.getEmail()}</td>
                            <td>${u.getPassword()}</td>
                            <td>${u.getAddress()}</td>
                            <td>${u.getContact()}</td>      
                            <td>
                                <a href="EditAccountantForm?id=<c:out value='${u.getId()}'/>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="DeleteAccountant?id=<c:out value='${u.getId()}'/>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
             
                            </td>
                         
                         </tr>
                    </c:forEach>
                </tbody>
            </table><!--end table-->
            
                </div><!-- end table wrapper-->
            </div><!-- end table contaniner-->
    </body>
</html>
