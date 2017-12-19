<%-- 
    Document   : error
    Created on : Dec 19, 2017, 1:26:47 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="<c:url value="/resources/theme1/css/style.css"/>" rel="stylesheet" type="text/css" media="all">
        <link href="<c:url value="/resources/theme1/css/slider.css"/>" rel="stylesheet" type="text/css" media="all">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/theme1/js/jquery-1.7.2.min.js"/>" type="text/javascript"</script> 
        <script src="<c:url value="/resources/theme1/js/move-top.js"/>" type="text/javascript"</script>
        <script src="<c:url value="/resources/theme1/js/startstop-slider.js"/>" type="text/javascript"</script>
        <script src="<c:url value="/resources/theme1/js/easing.js"/>" type="text/javascript"</script>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
         <br/>
        <br/>
        <br/>
        <div class="center-block" style="width: 700px; align-content: center">       
        <img src="${pageContext.request.contextPath}/resources/images/error.png"/>
        </div>
                 
        <br/>
        <br/>
         <jsp:include page="Footer.jsp"/>
    </body>
</html>
