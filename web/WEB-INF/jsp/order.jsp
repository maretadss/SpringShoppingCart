<%-- 
    Document   : pay
    Created on : Dec 19, 2017, 9:17:51 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <br/>
        
        <c:if test="${empty sessionScope.user}">
             <div class="alert alert-warning center-block" style="width:  500px" align="center">
            <strong>Sorry!</strong> You have to<a href="${pageContext.request.contextPath}/login"> login</a> first. Haven't have an account? Please<a href="${pageContext.request.contextPath}/register"> Create an Account</a>
            </div>
        </c:if>
        <c:if test="${not empty sessionScope.user}">
            <div class="center-block" align="center" style="color: red; font-weight: 700">Alamat Pengiriman Anda</div>
            <br/>
            <br/>
            <form class="form-horizontal center-block" style="width: 600px">
                                       
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Nama</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Nama Lengkap" width="300">
             </div>
             </div>
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Alamat</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Alamat Lengkap" width="300">
             </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Provinsi</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Jawa Timur</option>
                        <option>Jawa Barat</option>
                        <option>Jawa Tengah</option>
                        <option>DKI Jakarta</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kota</label>
                    <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Malang</option>
                        <option>Kediri</option>
                        <option>Jakarta</option>
                        <option>Yogyakart</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
                <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kecamatan</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Malang</option>
                        <option>Kediri</option>
                        <option>Jakarta</option>
                        <option>Yogyakart</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kode Pos</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Kode Pos (optional)" width="300">
             </div>
             </div>
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">No Hp</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Nomor Telepon" width="300">
             </div>
             </div>
            </div>
            
            <div class="form-group"> 
            <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
            <label><input type="checkbox">Sudah Benar</label>
            </div>
            </div>
            </div>
            
            <div class="form-group"> 
              <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-warning disabled" onclick="alert('Maaf! Website masih dalam masa pengembangan')">Lanjutkan</button>
            </div>
            </div>
            </form>
        </c:if>
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
