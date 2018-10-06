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
<div style="vertical-align: top;">
View My Shopping <a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">Cart</a>
</div>

<%@ include file ="carts.html" %>

<FONT size = 5 COLOR="#CC0000">
<br> You are viewing James cart:

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
	<TD width=300> Beavis & Butt-head Video collection</TD>
	<TD> 1</TD>
	<TD> James </TD>
	<TD> Yes</TD>
</TR>
<TR>
	<TD> Image 0</TD>
	<TD width=300> Twin peaks tapes</TD>
	<TD> 1</TD>
	<TD> Shane </TD>
	<TD> Yes</TD>
</TR>
<TR>
	<TD> Image 0</TD>
	<TD width=300> Concert tickets</TD>
	<TD> 3</TD>
	<TD> Jim </TD>
	<TD> Pending Approval</TD>
</TR>
</TABLE>
</FONT>

<hr>
</html>
