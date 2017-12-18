<%-- 
    Document   : successregistration
    Created on : Dec 14, 2017, 2:23:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <h1> Selamat ${data.firstName} Registrasi berhasil</h1>
            
            <p>
                <a href="${pageContext.request.contextPath}/login">Please Login</a>
            </p>
        
    </body>
</html>
