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
       <br/>
       <br/>
       <h1 align="center" style="color: red; font-size: large; font-weight: 600">PRODUCT</h1>
       <br/>
        <form:form action="admin/save" modelAttribute="productBean" method="POST">
            <div class="center-block" style="width: 400px">
            <table class="table table-striped">
                <tr>
                    <td><form:label path="productCode">Kode Produk</form:label></td>
                    <td>:</td>
                    <td><form:input path="productCode" placeholder="2 Huruf Utama Kategory"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="productName">Nama Produk</form:label></td>
                    <td>:</td>
                    <td><form:input path="productName"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="productPrice">Harga</form:label></td>
                     <td>:</td>
                    <td><form:input path="productPrice" height="300"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="quantity">Stok</form:label></td>
                     <td>:</td>
                    <td><form:input path="quantity"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="available">Ketersediaan</form:label></td>
                     <td>:</td>
                    <td><form:input path="available"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="description">Deskripsi</form:label></td>
                     <td>:</td>
                    <td><form:input path="description"/></td>
                   
                </tr>
               
            </table>
                    <form:button class="btn btn-primary" name="submitButton" value="Submit">Save</form:button>
       
                 </div> 
        </form:form>
       <div class="center-block">
           <button class="btn btn-warning">Update</button> 
       <button class="btn btn-danger">Delete</button>
       </div>
        <br/>
        <br/>
        <br/>
        <br/>
         <div style="width: 900px" class="center-block">
            
         <div style="font-weight: 550; font-size: large; color: red">ALL PRODUCT</div>
        <br/>
         <!--h1>Mbak! km yang mau dijadiin primary key tuh yang mana mbak? Product Kode atau Product ID????</h1-->
        <table class="table table-striped" width="20" >
            
            <tr>
                <th>Kode</th>
                <th> Nama Produk</th>
                <th> Harga </th>
                <th> Stok </th>
                <th> Ketersediaan </th>
                <th> Deskripsi </th>
                
            </tr>
        <a:forEach var="p" items="${prods}">
            <tr>
                <td>${p.productCode}${productId}</td>
                <td>${p.productName}</a> </td>
                <td>${p.productPrice}</td>
                <td>${p.quantity}</td>
                <td>${p.available}</td>
                <td>${p.description}</td>
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
