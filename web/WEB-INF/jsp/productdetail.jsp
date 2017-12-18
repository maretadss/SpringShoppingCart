<%-- 
    Document   : productdetail
    Created on : Dec 15, 2017, 2:39:16 PM
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
        <title>${product.productName}</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <div style="width: 400px;" class="center-block">
        <h1 style="color: red">PRODUCT DETAIL</h1>
            <table class="table table-striped">
            <tr>
                <td>Kode</td>
                <td>:</td>
                <td>${product.productCode} ${product.productId}</td>
            </tr>
            <tr>
                <td>Nama Produk</td>
                <td>:</td>
                <td>${product.productName}</td>
            </tr>
            <tr>
                <td>Harga</td>
                <td> : </td>
                <td>Rp. ${product.productPrice}</td>
            </tr>
            <tr>
                <td>Stok</td>
                <td>:</td>
                <td>${product.available}</td>
            </tr>
            <tr>
                <td>Deskripsi</td>
                <td>:</td>
                <td>${product.description}</td>
            </tr>
        </table>
                <a href="addCart/${product.productId}"<button class ="btn btn-danger" style="align-content: center"> BELI SEKARANG</button></a>
                </div>
 				
            <jsp:include page="Footer.jsp"/>
    </body>
</html>
