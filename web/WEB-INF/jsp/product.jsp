<%-- 
    Document   : product
    Created on : Dec 15, 2017, 10:13:49 AM
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
        <title>Product</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
       
        <!--h1 align="center">PRODUCT</h1>
        <form:form action="admin/save" modelAttribute="productBean" method="POST">
            <table align="center">
                <tr>
                    <td><form:label path="productCode">Kode Produk</form:label></td>
                    <td><form:input path="productCode"/></td>
                </tr>
                <tr>
                    <td><form:label path="productName">Nama Produk</form:label></td>
                    <td><form:input path="productName"/></td>
                </tr>
                <tr>
                    <td><form:label path="productPrice">Harga</form:label></td>
                    <td><form:input path="productPrice"/></td>
                </tr>
                <tr>
                    <td><form:label path="quantity">Stok</form:label></td>
                    <td><form:input path="quantity"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="left"><form:button name="submitButton" value="Submit">Save</form:button> </td>
                </tr>
            </table-->
        </form:form>
        <p></p>
         <div style="width: 600px" class="center-block">
         <h1></h1>
        
         <!--h1>Mbak! km yang mau dijadiin primary key tuh yang mana mbak? Product Kode atau Product ID????</h1-->
        <table class="table table-striped" width="20" >
            
            <tr>
                
                <th> Nama Produk</th>
                <th> Harga </th>
                <th> Stok </th>
                
            </tr>
        <a:forEach var="p" items="${prods}">
            <tr>
                <td><a href="${pageContext.request.contextPath}/home/product/${p.productId}">${p.productName}</a> </td>
                <td>${p.productPrice}</td>
                <td>${p.available}</td>
            </tr>
        </a:forEach>
        </table>
                 </div>

         <jsp:include page="Footer.jsp"/>
    </body>
</html>
