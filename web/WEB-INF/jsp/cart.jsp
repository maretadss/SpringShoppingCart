<%-- 
    Document   : cart
    Created on : Dec 15, 2017, 9:24:51 AM
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
        <div style="width: 900px" class="center-block">
            
         <div style="font-weight: 600; font-size: x-large; color: red">YOUR SHOPPING CART</div>
        <br/>
            <a href="${pageContext.request.contextPath}"><< Lanjutkan Belanja</a>
            <br/>
            <br/>
        <table class="table table-bordered" width="20" >
            
            <tr>
            <th style="font-weight: 600"> Kode </th>
                <th style="font-weight: 600"> Nama Produk </th>
                <th style="font-weight: 600"> Harga </th>
                <th style="font-weight: 600"> Deskripsi </th>
                <th></th>
                
            </tr>
        <c:forEach var="i" items="${cart.cartItems.values()}">
            <tr>
                <td>${i.productCode}${i.productId} </td>
                <td>${i.productName}</td>
                <td>${i.productPrice}</td>
                <td>${i.description}</td>
                <td><a href="${pageContext.request.contextPath}/cart/remove/${i.productId}"><button class="btn btn-danger">Delete</button></a></td>
            </tr>
        </c:forEach>
             </table>
             <div style="font-weight: 900; font-size: larger"> Total Bayar : Rp. ${total}</div>
             <br/>
             <br/>
                <c:if test="${empty cart}">
                    <button class="btn btn-warning disabled" onclick="alert('Keranjang Belanja Anda Kosong')"> Lanjutkan Pembayaran</button></a>
                </c:if>
             <c:if test="${not empty cart}">
             <a href="${pageContext.request.contextPath}/bayar"><button class="btn btn-warning"> Lanjutkan Pembayaran</button></a>
               </c:if>
            </div>    
                 
        <br/>
        <br/>
        <br/>
       
         <jsp:include page="Footer.jsp"/>
    </body>
</html>
