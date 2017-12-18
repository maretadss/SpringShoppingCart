<%-- 
    Document   : login
    Created on : Dec 14, 2017, 2:21:56 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/theme1/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/theme1/css/login.css" />" rel="stylesheet">
         <script src="<c:url value="/resources/theme1/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/theme1/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/theme1/js/login.js" />"></script>
        <title>WoWMart | Situs Belanja Online Termumet di Indonesia</title>
    </head>
    <body>
  
                <div class="login-page">
                 <div class="form">
                    <form:form class="login-form" action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                        <div style="color: red; font-weight: 300">${errMsg}</div>
                                <form:input path="username" placeholder="username"/>
                            
                                <form:password path="password" placeholder="password"/>
                            <form:button name="submitButton" value="Submit">login</button></form:button>
                 
                        <p class="message">Not registered? <a href="${pageContext.request.contextPath}/register">Create an Account</a></p>
                                 
                    </form:form>
                      </div>
                    </div>       
            
    </body>
</html>
