	<%@page import="sessions.SessionProfile"%>
	<%@page import="com.profile.Profile"%>
	<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
	<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
	<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>
	<%@ include file ="../headerfooter/header.jsp" %>
	<br><br>

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="container-fluid">
					<div class="row fullscreen align-items-center justify-content-center">
						<div class="col-lg-6 col-md-12 d-flex align-self-end img-right no-padding">
							<img class="img-fluid" src="../img/header-img.png" alt="">
						</div>
						<div class="banner-content col-lg-6 col-md-12">
							<h1 class="title-top"><span>Flat</span> 75%Off</h1>
							<h1 class="text-uppercase">
								Welcome to  <br>
								Go Carting !!!
							</h1>
							<button class="primary-btn text-uppercase"><a href="#">Purchase Now</a></button>
						</div>							
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start category Area -->
			<section class="category-area section-gap section-gap" id="catagory">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-40">
							<div class="title text-center">
								<h1 class="mb-10">Shop for Different Categories</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>					
					<div class="row">
						<div class="col-lg-8 col-md-8 mb-10">
							<div class="row category-bottom">
								<div class="col-lg-6 col-md-6 mb-30">
									<div class="content">
									    <a href="#" target="_blank">
									      <div class="content-overlay"></div>
									  		 <img class="content-image img-fluid d-block mx-auto" src="img/c1.jpg" alt="">
									      <div class="content-details fadeIn-bottom">
									        <h3 class="content-title">Product for Women</h3>
									      </div>
									    </a>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 mb-30">
									<div class="content">
									    <a href="#" target="_blank">
									      <div class="content-overlay"></div>
									  		 <img class="content-image img-fluid d-block mx-auto" src="img/c2.jpg" alt="">
									      <div class="content-details fadeIn-bottom">
									        <h3 class="content-title">Product for Couple</h3>
									      </div>
									    </a>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="content">
										<a href="#" target="_blank">
									      <div class="content-overlay"></div>
									  		 <img class="content-image img-fluid d-block mx-auto" src="img/c3.jpg" alt="">
									      <div class="content-details fadeIn-bottom">
									        <h3 class="content-title">Shop Now</h3>
									      </div>
									    </a>
									</div>
							  	</div>																
							</div>							
						</div>
						<div class="col-lg-4 col-md-4 mb-10">
						  <div class="content">
						    <a href="#" target="_blank">
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/c4.jpg" alt="">
						      <div class="content-details fadeIn-bottom">
						        <h3 class="content-title">Product For Men</h3>
						      </div>
						    </a>
						  </div>
						</div>						
					</div>
				</div>	
			</section>
			<!-- End category Area -->
			 <%@ include file ="../headerfooter/footer.jsp" %>