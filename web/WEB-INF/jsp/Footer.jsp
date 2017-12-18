<%-- 
    Document   : Footer
    Created on : Dec 17, 2017, 8:08:45 PM
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
         <div class="footer">
   	  <div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="#">Orders and Returns</a></li>
						<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="#">Sign In</a></li>
							<li><a href="#">View Cart</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="#">Track My Order</a></li>
							<li><a href="#">Help</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+62 853-3055-7595</span></li>
							<li><span>maretadss@gmail.com</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul>
							      <li><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/resources/images/dribbble.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/resources/images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>			
        </div>
        <div class="copy_right">
				<p>&copy; 2017 WoWMart.co.id | Situs Belanja Online Termumet di Indonesia. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		   </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    </body>
</html>
