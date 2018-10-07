<%--
 Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<html>
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


<div class="container">
<br> You have the following items in your cart:

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
                            <h6>Do you want to approve or decline?</h6>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci1.jpg" class="img-fluid" alt="">
                                <h6>Stan Smith Adidas Tennis for Gentleman</h6>
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
                            <div>Self</div>
                        </div>
                    </div>
                </div>
                <%
				java.lang.String approve = request.getParameter("approve");
				if(approve == null || !approve.equals("No")){
				%>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="../img/ci2.jpg" class="img-fluid" alt="">
                                <h6>Chronograph Watch in Silvertone w/Leather Strap</h6>
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
	                        <%	
							if(approve != null && approve.equals("Yes")){
							%> 
                            <div>Approved</div>
                        	<%
							}
							else{
							%>
							<div><a href="http://localhost:8080/CheckoutPro/jsp/sessions/cartApproval.jsp?approve=Yes">Approve</a>
							/<a href="http://localhost:8080/CheckoutPro/jsp/sessions/cartApproval.jsp?approve=No">Decline</a> </div>
							<%
							}
							%>    
                        </div>
                    </div>
                </div>
                <%
				 }
				%>
                <div style="float:right;">
					<%@ include file ="../chats/chat.html" %>
				</div> 
				<p> <a href ="http://localhost:8080/CheckoutPro/jsp/friendlist/friendSelection.jsp" ><input type="button" class="view-btn color-2" value="Share Now" /></a>
				 <input type="button" class="view-btn color-2" value="Stop Sharing" />
				 <input type="button" class="view-btn color-2" value="Cart Freeze" />
				 <a href ="http://localhost:8080/CheckoutPro/jsp/confirmation/orderConfirmation.jsp" ><input type="button" class="view-btn color-2" value="Place Order" /></a></p>
            </div>
            <!-- End Cart Area -->
 <%@ include file ="../headerfooter/footer.jsp" %>