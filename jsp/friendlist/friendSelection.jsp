<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<%@page import="com.friendlist.FriendList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>
</head>
<body>
<div style="vertical-align: middle;">
Hi <%out.print(sessionsProfile.getLogin());%>
</div>

<h4>Sharing with:</h4>
<form action="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">
	<c:forEach items="${sessionsProfile.getFriendProfiles()}" var="item">
	   	<p><input type="checkbox" name=${item} value=${item}>${item}</p>
	</c:forEach>
<INPUT TYPE=submit name="submit" value="SUBMIT" />
</form>
</body>
</html>