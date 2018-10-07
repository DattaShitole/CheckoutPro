<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<html>
<jsp:useBean id="cart" scope="session" class="sessions.DummyCart"/>
<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>


<%@ include file ="../headerfooter/header.jsp" %>
<br><br>
<div class="container">
<%@ include file ="sharedCarts.html" %>



<FONT size = 1 COLOR="#CC0000">
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
</div><br><br><br><br>
<%@ include file ="../headerfooter/footer.jsp" %>
