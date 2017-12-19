<%-- 
    Document   : product
    Created on : Dec 15, 2017, 10:13:49 AM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Product</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
       
        <br/>
        <br/>
        <br/>
        <br/>
         <div style="width: 600px" class="center-block">
            
         <div style="font-weight: 550; font-size: large; color: red">ALL PRODUCT</div>
        <br/>
         <!--h1>Mbak! km yang mau dijadiin primary key tuh yang mana mbak? Product Kode atau Product ID????</h1-->
        <table class="table table-striped" width="20" >
            
            <tr>
                <!--th></th-->
                <th> Nama Produk</th>
                <th> Harga </th>
                <th> Stok </th>
                
            </tr>
        <a:forEach var="p" items="${prods}">
            <tr>
                <!--td><img src="<c:url value="resouces/images/${p.pic}"/>"/></td-->
                <td><a href="${pageContext.request.contextPath}/home/product/${p.productId}">${p.productName}</a> </td>
                <td>${p.productPrice}</td>
                <td>${p.available}</td>
            </tr>
        </a:forEach>
        </table>
                 </div>
        <br/>
        <br/>
        <br/>
       
         <jsp:include page="Footer.jsp"/>
    </body>
</html>
