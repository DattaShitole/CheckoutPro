<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>
<%@ include file ="../headerfooter/header.jsp" %>
<br/><br/>

<%@ include file ="sharedCarts.html" %>

<div style="float:right">
<a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">View My Shopping Cart</a>
</div>

<div class="container">
<div style="vertical-align: top;">
View My Shopping <a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">Cart</a>
</div>

<br><h5> You are viewing James cart:</h5><br>
<!-- Start Cart Area -->
            <div class="container">
                <div class="cart-title">
                    <div class="row">
                        <div class="col-md-6">
                            <h6 class="ml-15">Product</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Quantity</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Added By</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Is it Approved?</h6>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci1.jpg" class="img-fluid" alt="">
                                <h6>Beavis & Butt-head Video collection</h6>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div class="quantity-container d-flex align-items-center mt-15">
                                <input type="text" class="quantity-amount" value="1" />
                                <div class="arrow-btn d-inline-flex flex-column">
                                    <button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
                                    <button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div>James</div>
                        </div>
                        <div class="col-md-2 col-12">
                            <div>YES</div>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci2.jpg" class="img-fluid" alt="">
                                <h6>Twin peaks tapes</h6>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div class="quantity-container d-flex align-items-center mt-15">
                                <input type="text" class="quantity-amount" value="1" />
                                <div class="arrow-btn d-inline-flex flex-column">
                                    <button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
                                    <button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div>Shane</div>
                        </div>
                        <div class="col-md-2 col-12">
                            <div>Yes</div>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci3.jpg" class="img-fluid" alt="">
                                <h6>Concert tickets</h6>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div class="quantity-container d-flex align-items-center mt-15">
                                <input type="text" class="quantity-amount" value="3" />
                                <div class="arrow-btn d-inline-flex flex-column">
                                    <button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
                                    <button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div>Jim</div>
                        </div>
                        <div class="col-md-2 col-12">
                            <div>Pending Approval</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Cart Area -->
</div>
<br><br>
<%@ include file ="../headerfooter/footer.jsp" %>
