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
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<%@page isELIgnored="false" %>
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

<% if(sessionsProfile.getLogin() != null && !sessionsProfile.getLogin().equals("Eric")){%>
<div align="right">
<a href="http://localhost:8080/CheckoutPro/jsp/sessions/viewSharedCarts.jsp">View Shared Carts</a>
</div>
<%
}
%>

<%@ include file ="carts.html" %>

<div style="float:right;">
	<%@ include file ="../chats/chat.html" %>
</div>

<FONT size = 5 COLOR="#CC0000">
<br> You have the following items in your cart:

<TABLE border="1" cellspacing=10 cellpadding=5>
<TR>
	<TD><b>Item Image</b></TD>
	<TD><b>Item Name</b></TD>
	<TD><b>Quantity</b></TD>
</TR>

<%
    String[] items = cart.getItems();
    for (int i=0; i<items.length; i++) {
%>
<TR>
	<TD> Image <% out.print(i);%></TD>
	<TD width=300> <% out.print(util.HTMLFilter.filter(items[i])); %></TD>
	<TD> 1</TD>
</TR>
<%
    }
%>
</TABLE>
</FONT>


<c:choose>
	<c:when test="${param.share eq true}">
		<h4>Sharing with:</h4>
		<c:forEach items="${sessionsProfile.getFriendProfiles()}" var="item">
	    	<p>${item}</p>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<p> <a href ="http://localhost:8080/CheckoutPro/jsp/friendlist/friendList.jsp" >Share Now</a></p>
	</c:otherwise>
</c:choose>
</html>
