<%-- 
    Document   : registration
    Created on : Dec 14, 2017, 2:21:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="<c:url value="/resources/theme1/css/login.css" />" rel="stylesheet">
        
        <script src="<c:url value="/resources/theme1/js/login.js" />" type="text/javascript"></script>
         
        
        <title>JSP Page</title>
    </head>
    <body>
        
         <div class="login-page">
            <div class="form">  
            <form:form class="login-form" action="register/save" modelAttribute="registerBean" method="POST">
                <form:input path="firstName" placeholder="firstname"/>
                <form:input path="lastName" placeholder="lastname"/>
                <form:input path="email" placeholder="email address"/>
                <form:input path="nohp" placeholder="No Hp"/>
                <form:input path="username" placeholder="username"/>
                <form:password path="password" placeholder="password"/>
                <form:button name="submitButton" value="Submit">create</form:button> 
                 <p class="message">Already registered? <a href="${pageContext.request.contextPath}/login">Sign In</a></p>
            </form:form>
                 </div>
            </div>
    </body>
</html>
