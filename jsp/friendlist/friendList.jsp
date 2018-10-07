<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<%@page import="com.friendlist.FriendList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page isELIgnored="false" %>

<jsp:useBean id="profileDataHolder" scope="application" class="com.profile.ProfileDataHolder"/>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>
<jsp:useBean id="friendList" scope="application" class="com.friendlist.FriendList"/>

<jsp:setProperty name="friendList" property="*" />
<%
	if (profileDataHolder.profiles.size() <= 0) {
		profileDataHolder.getAllProfiles();
	}
	friendList.processFriendRequest(sessionsProfile);
%>

<%@ include file ="../headerfooter/header.jsp" %>
<br><br>
<%@ include file ="friendList.html" %>
<br><br>
Group count:${sessionsProfile.getFriendProfiles().size()}
<c:choose>
	<c:when test="${sessionsProfile.getFriendProfiles().size() > 0}">
		<TABLE border="1" cellspacing=10 cellpadding=5>
			<TR>
				<TD><b>Member Logins</b></TD>
			</TR>
			<c:forEach var="item" items="${sessionsProfile.getFriendProfiles()}">
				<TR>
					<TD> ${item}</TD>
				</TR>
			</c:forEach>
		</TABLE>
	</c:when>
	<c:otherwise>
		<h5>You have empty member List !!!</h5>
	</c:otherwise>
</c:choose>
</div><br><br>
 <%@ include file ="../headerfooter/footer.jsp" %>
