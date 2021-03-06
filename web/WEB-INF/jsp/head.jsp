<%-- 
    Document   : head
    Created on : Dec 17, 2017, 8:02:18 PM
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
        <script src="<c:url value="/resources/theme1/js/jquery-1.7.2.min.js"/>" type="text/javascript"</script> 
        <script src="<c:url value="/resources/theme1/js/move-top.js"/>" type="text/javascript"</script>
        <script src="<c:url value="/resources/theme1/js/startstop-slider.js"/>" type="text/javascript"</script>
        <script src="<c:url value="/resources/theme1/js/easing.js"/>" type="text/javascript"</script>
       
    </head>
    <body>
        <div class="wrap">
            <div class="header">
		<div class="headertop_desc">
			<div class="call">
				 <p><span>Butuh Bantuan?</span> Hubungi Kami : <span class="number">maretadss@gmail.com</span></span></p>
			</div>
			<div class="account_desc">
				<ul>    <c:if test="${empty sessionScope.user}">
					<li><a href="${pageContext.request.contextPath}/register">Daftar</a></li>
					<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.user}">
                                        <li>Hi,${user.username}</li>
                                        <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                                        </c:if>
					<li><a href="${pageContext.request.contextPath}/cart">Pesanan</a></li>
                                        <c:if test="${empty sessionScope.cart}">
					<li><a href="${pageContext.request.contextPath}" onclick="alert('Isi Dulu Keranjang Belanja Anda')">Checkout</a></li>
                                        </c:if> 
                                        <c:if test="${not empty sessionScope.cart}">
                                        <li><a href="${pageContext.request.contextPath}/bayar">Checkout</a></li>
                                        </c:if>
					<li><a href="${pageContext.request.contextPath}">My Account</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="header_top">
			<div class="logo">
                        <a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo1.png"/></a>
			</div>
			  <div class="cart">
                          <p>Welcome to our Online Store! <img src="${pageContext.request.contextPath}/resources/images/ic.png"/><div id="dd" class="wrapper-dropdown-2"> ${interator} item(s) - Rp. ${total}
			  	   	<ul class="dropdown">
                                        <a href="${pageContext.request.contextPath}/cart"><li>you have ${interator} items in your Shopping cart</li></a>
					</ul></div></p>
			  </div>
			  <script type="text/javascript">
			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			$(function() {

				var dd = new DropDown( $('#dd') );

				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-2').removeClass('active');
				});

			});

		</script>
	 <div class="clear"></div>
  </div>
	<div class="header_bottom">
	     	<div class="menu">
	     		<ul>
			    	<li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
			    	<li><a href="${pageContext.request.contextPath}">About</a></li>
			    	<li><a href="${pageContext.request.contextPath}">Delivery</a></li>
			    	<li><a href="${pageContext.request.contextPath}">News</a></li>
			    	<li><a href="${pageContext.request.contextPath}">Contact</a></li>
			    	<div class="clear"></div>
     			</ul>
	     	</div>
	     	<div class="search_box">
	     		<form>
	     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
	     		</form>
	     	</div>
	     	<div class="clear"></div>
                
	     </div>
           </div>
        </div>
    </body>
</html>
