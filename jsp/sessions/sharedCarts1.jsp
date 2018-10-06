<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<html>
<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>


<div align="middle">
Hi <%out.print(sessionsProfile.getLogin());%>
</div>
<br/>
<br/>
<br/>
<div style="float:right">
<a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">View My Shopping Cart</a>
</div>

<%@ include file ="carts.html" %>

<FONT size = 5 COLOR="#CC0000">
<br> You are viewing Eric's cart:

<TABLE border="1" cellspacing=10 cellpadding=5>
<TR>
	<TD><b>Item Image</b></TD>
	<TD><b>Item Name</b></TD>
	<TD><b>Quantity</b></TD>
	<TD><b>Added By</b></TD>
	<TD><b>Is it Approved?</b></TD>
</TR>


<TR>
	<TD> Image 0</TD>
	<TD width=300> Stan Smith Adidas Tennis for Gentleman</TD>
	<TD> 1</TD>
	<TD> Eric </TD>
	<TD> Yes</TD>
</TR>
<TR>
	<TD> Image 0</TD>
	<TD width=300> Chronograph Watch in Silvertone w/Leather Strap</TD>
	<TD> 1</TD>
	<TD> James </TD>
	<TD> Pending Approval</TD>
</TR>
<TR>
	<TD> Image 0</TD>
	<TD width=300> Gold Stars Tutu Skirt in Navy</TD>
	<TD> 1</TD>
	<TD> Diana </TD>
	<TD> Yes</TD>
</TR>
<TR>
	<TD> Image 0</TD>
	<TD width=300> Broadway 16-Piece Dinnerware Set</TD>
	<TD> 1</TD>
	<TD> Daisy </TD>
	<TD> Yes</TD>
</TR>
</TABLE>
</FONT>

<hr>
</html>
