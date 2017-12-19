<%-- 
    Document   : home
    Created on : Dec 14, 2017, 11:24:01 AM
    Author     : user
--%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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

        <title>WoWMart.co.id | Situs Belanja Online Termumet di Indonesia. </title>
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
					<li><a href="${pageContext.request.contextPath}">Checkout</a></li>
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
                                             <a href="${pageContext.request.contextPath}/cart"><li> you have ${interator} items in your Shopping cart</li></a>
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
			    	<li><a href="${pageContext.request.contextPath}/error">About</a></li>
			    	<li><a href="${pageContext.request.contextPath}/error">Delivery</a></li>
			    	<li><a href="${pageContext.request.contextPath}/error">News</a></li>
			    	<li><a href="${pageContext.request.contextPath}/error">Contact</a></li>
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
	<div class="header_slide">
			<div class="header_bottom_left">				
				<div class="categories">
				  <ul>
				  	<h3>Categories</h3>
				      <li><a href="home/product">Mobile Phones</a></li>
				      <li><a href="home/product">Electronics</a></li>
				      <li><a href="#">Computer</a></li>
				      <li><a href="#">Fashion</a></li>
				      <li><a href="#">Software</a></li>
				       <li><a href="#">Sports &amp; Fitness</a></li>
				       <li><a href="#">Footwear</a></li>
				       <li><a href="#">Jewellery</a></li>
				       <li><a href="#">Game</a></li>
				       <li><a href="#">Home Decor &amp; Kitchen</a></li>
				       <li><a href="#">Beauty &amp; Healthcare</a></li>
				       <li><a href="#">Toys, Kids &amp; Babies</a></li>
				  </ul>
				</div>					
	  	     </div>
					 <div class="header_bottom_right">					 
					 	 <div class="slider">					     
							 <div id="slider">
			                    <div id="mover">
			                    	<div id="slide-1" class="slide">			                    
									 <div class="slider-img">
									     <a href="${pageContext.request.contextPath}/home/product"><img src="${pageContext.request.contextPath}/resources/images/slide-1-image.png" alt="learn more" /></a>									    
									  </div>
						             	<div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 20% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services Lorem Ipsum is simply dummy text</h4>							               
							            </div>
							             <a href="${pageContext.request.contextPath}/home/product" class="button">Shop Now</a>
					                   </div>			               
									  <div class="clear"></div>				
				                  </div>	
						             	<div class="slide">
						             		<div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 40% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services</h4>							               
							            </div>
							             <a href="${pageContext.request.contextPath}/home/product" class="button">Shop Now</a>
					                   </div>		
						             	 <div class="slider-img">
									     <a href="${pageContext.request.contextPath}/home/product"><img src="${pageContext.request.contextPath}/resources/images/slide-3-image.jpg" alt="learn more" /></a>
									  </div>						             					                 
									  <div class="clear"></div>				
				                  </div>
				                  <div class="slide">						             	
					                  <div class="slider-img">
									     <a href="${pageContext.request.contextPath}/home/product"><img src="${pageContext.request.contextPath}/resources/images/slide-2-image.jpg" alt="learn more" /></a>
									  </div>
									  <div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 10% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services Lorem Ipsum is simply dummy text</h4>							               
							            </div>
							             <a href="${pageContext.request.contextPath}/home/product" class="button">Shop Now</a>
					                   </div>	
									  <div class="clear"></div>				
				                  </div>												
			                 </div>		
		                </div>
					 <div class="clear"></div>					       
		         </div>
		      </div>
		   <div class="clear"></div>
		</div>
   </div>                                                                  
 <div class="main">
     
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
                    
    		<h3>Mobile Phones</h3>
    		</div>
    		<div class="see">
    			<p><a href="home/product">See all Products</a></p>
    		</div>
            
    		<div class="clear"></div>
        </div>
         
	      <div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
                                    
					 <a href="${pageContext.request.contextPath}/home/product/303"><img src="${pageContext.request.contextPath}/resources/images/xia1.PNG" alt="" /></a>
					
                                         <h2>Xiaomi Redmi Note 4</h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 1.999.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/303">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
                                      
					</div>
                                                                  
                                        
					 
				</div>
              
				<div class="grid_1_of_4 images_1_of_4">
					<a href="${pageContext.request.contextPath}/home/product/304"><img src="${pageContext.request.contextPath}/resources/images/xia2.PNG" alt="" /></a>
					 <h2>Xiaomi Mi A1 64GB</h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 3.099.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/304">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				    
				</div>                                                                  

				<div class="grid_1_of_4 images_1_of_4">
					<a href="${pageContext.request.contextPath}/home/product/305"><img src="${pageContext.request.contextPath}/resources/images/viv1.PNG" alt="" /></a>
					 <h2>Vivo V7 - RAM 4 GB</h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 3.599.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/305">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="${pageContext.request.contextPath}/home/product/306"><img src="${pageContext.request.contextPath}/resources/images/son1.PNG" alt="" /></a>
					 <h2>SON Xperia XA1-32GB</h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 3.400.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/306">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>				     
				</div>
                                                             
			</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>Electronics</h3>
    		</div>
    		<div class="see">
    			<p><a href="home/product">See all Products</a></p>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="${pageContext.request.contextPath}/home/product/307"><img src="${pageContext.request.contextPath}/resources/images/asus1.PNG" alt="" /></a>					
					 <h2>ASUS X555BP-BX921T</h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 5.325.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/307">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="${pageContext.request.contextPath}/home/product/308"><img src="${pageContext.request.contextPath}/resources/images/len1.PNG" alt="" /></a>
					 <h2>Lenovo IdeaPad 120S</h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 2.899.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/308">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="${pageContext.request.contextPath}/home/product/309"><img src="${pageContext.request.contextPath}/resources/images/kuklkas1.PNG" alt="" /></a>
					 <h2>Samsung Kulkas 2 Pintu</h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 3.499.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/309">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
				 <a href="${pageContext.request.contextPath}/home/product/310"><img src="${pageContext.request.contextPath}/resources/images/kamera1.PNG" alt="" /></a>
					 <h2>Sony Alpha a5100</h2>					 
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">RP 6.999.000</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="${pageContext.request.contextPath}/home/product/310">Beli</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>  
                                          
    </div>
                                                          
    </div>
                                                             
                                                           
 </div>                                   
</div>
                                    
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
