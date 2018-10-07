<%@page import="com.profile.Profile"%>
<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>

<jsp:setProperty name="sessionsProfile" property="*" />

<%@ include file ="../headerfooter/header.jsp" %>
<br><br>

<%
	java.lang.String login = request.getParameter("login");
	if(login != null){
	%>
<br><br><br>	
GO CARTING 
<div align="center">
<a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">View Cart Page</a>
</div>
<br>
<%


	}
	if(login == null){
%>

<%@ include file ="login.html" %>
<br> Login Page : Please put your credentials
<%
	}
%>
<%@ include file ="../headerfooter/header.jsp" %>
