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

<!-- Start Banner Area -->
    <section class="banner-area">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                <div class="col-first">
                    <h1>Shared Shopping Cart</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
            
<div class="container">
<br> Shared Shopping Cart's:<br>

                <div class="cart-title">
                    <div class="row">
                        <div class="col-md-6">
                            <h6 class="ml-15">Cart Owner</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Action</h6>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <h6>Eric</h6>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div><a href ="http://localhost:8080/CheckoutPro/jsp/sessions/sharedCarts.jsp" >Load Cart</div>
                        </div>
                    </div>
                </div>
                <div style="float:right;">
					<%@ include file ="../chats/chat.html" %>
				</div> 
            </div>
            <!-- End Cart Area -->
 <%@ include file ="../headerfooter/footer.jsp" %>