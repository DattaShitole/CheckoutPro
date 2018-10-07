<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<%@page isELIgnored="false" %>
<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>

<jsp:setProperty name="cart" property="*" />

<%
    cart.processRequest();
	cart.reset();
	if (profileDataHolder.profiles.size() <= 0) {
		profileDataHolder.getAllProfiles();
	}
%>

<%@ include file ="../headerfooter/header.jsp" %>
<br><br>

<%@ include file ="carts.html" %>
<c:if test="${sessionsProfile.getLogin() ne 'Eric'}">
	<div align="right" style="margin-right:10%">
		<a href="http://localhost:8080/CheckoutPro/jsp/sessions/viewSharedCarts.jsp">View Shared Carts</a>
	</div>
</c:if>
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
                    </div>
                </div>
                <c:forEach var="item" items="${cart.getItems()}">
                	<div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci3.jpg" class="img-fluid" alt="">
                                <h6>${item}</h6>
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
                    </div>
                </div>
                <div style="float:right;">
					<%@ include file ="../chats/chat.html" %>
				</div> 
                </c:forEach><br><br>
                <p> <a href ="http://localhost:8080/CheckoutPro/jsp/friendlist/friendSelection.jsp" ><input type="button" class="view-btn color-2" value="Share Now" /></a>
				 <input type="button" class="view-btn color-2" value="Stop Sharing" />
				 <input type="button" class="view-btn color-2" value="Cart Freeze" />
				 <a href ="http://localhost:8080/CheckoutPro/jsp/confirmation/orderConfirmation.jsp" ><input type="button" class="view-btn color-2" value="Place Order" /></a></p>
            </div>
            <!-- End Cart Area -->
 <%@ include file ="../headerfooter/footer.jsp" %>
