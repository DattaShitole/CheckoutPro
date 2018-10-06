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
<%@page import="com.friendlist.FriendList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<html>
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

<div style="vertical-align: middle;">
Hi <%out.print(sessionsProfile.getLogin());%>
</div>

<%@ include file ="friendList.html" %>

<FONT size = 5 COLOR="#CC0000">
<br> You have following friends:

<TABLE border="1" cellspacing=10 cellpadding=5>
<TR>
	<TD><b>Email</b></TD>
</TR>

<%
    Set<String> friends = sessionsProfile.getFriendProfiles();
	out.print(friends.size());
    for (String friend :friends) {
%>
<TR>
	<TD> <% out.print(friend);%></TD>
</TR>
<%
    }
%>
</TABLE>
</FONT>

<a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp?share=true">Share</a>

<hr>
</html>
