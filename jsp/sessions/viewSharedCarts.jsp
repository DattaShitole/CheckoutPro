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

<div align="middle">
Hi <%out.print(sessionsProfile.getLogin());%>
</div>


<FONT size = 5 COLOR="#CC0000">
<br> Shared Shopping Cart's

<TABLE border="1" cellspacing=10 cellpadding=5>
<TR>
	<TD><b>Cart Owner</b></TD>
	<TD><b>Action</b></TD>
</TR>

<TR>
	<TD>Eric</TD>
	<TD width=300> <a href ="http://localhost:8080/CheckoutPro/jsp/sessions/sharedCarts.jsp" >Load Cart</a></TD>
</TR>
</TABLE>
</FONT>


</html>
