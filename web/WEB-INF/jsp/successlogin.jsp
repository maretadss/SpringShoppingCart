<%-- 
    Document   : successlogin
    Created on : Dec 14, 2017, 2:22:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<a:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <script src="<a:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<a:url value="/resources/js/bootstrap.js" />"></script>
        <title>WoWMart.co.id | Situs Belanja Online Termumet di Indonesia</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <div>
        <div style="width: 600px; font-weight: 600; font-size: larger" class="center-block">
       
            <h1>${user.username}, Anda berhasil Login</h1>
          </div>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
           
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
