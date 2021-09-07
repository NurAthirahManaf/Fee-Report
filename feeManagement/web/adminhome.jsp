<%-- 
    Document   : adminhome
    Created on : Dec 2, 2019, 7:58:01 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@ include file="navadmin.jsp" %> 
        
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="resources/images/admin1.jpg" alt="baby 1" >
                </div>

                <div class="item">
                    <img src="resources/images/admin2.jpg" alt="baby 2" >
                </div>
    
                <div class="item">
                    <img src="resources/images/admin3.jpg" alt="baby 3" >
                </div>
            </div>
        </div><!-- corousel end -->
    </body>
</html>