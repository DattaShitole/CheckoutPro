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

<%@ include file ="sharedCarts.html" %>

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
<%
java.lang.String submit = request.getParameter("submit");
	if(submit != null && submit.equals("add")){
%>
<TR>
	<TD> Image 0</TD>
	<TD width=300> <%
java.lang.String item = request.getParameter("item");
out.print(item);%></TD>
	<TD> 1</TD>
	<TD> Self </TD>
	<TD> Pending Approval</TD>
</TR>
<%
}
%>

</TABLE>
</FONT>

<hr>
</html>
