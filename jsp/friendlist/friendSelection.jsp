<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sessions.SessionProfile"%>
<%@page import="com.profile.Profile"%>
<%@page import="com.friendlist.FriendList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false" %>
<jsp:useBean id="sessionsProfile" scope="session" class="sessions.SessionProfile"/>

<%@ include file ="../headerfooter/header.jsp" %>
<br><br>
<!-- Start Banner Area -->
 <section class="banner-area">
     <div class="container">
         <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
             <div class="col-first">
                 <h1>Friends Selection</h1>
             </div>
         </div>
     </div>
 </section><br>
 <!-- End Banner Area -->
 <br><br>
 <div class="container">
	<h4>Sharing with:</h4>
	<form action="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">
		<c:forEach items="${sessionsProfile.getFriendProfiles()}" var="item">
		   	<p><input type="checkbox" name=${item} value=${item}>${item}</p>
		</c:forEach>
	<INPUT TYPE=submit class="view-btn color-2" name="submit" value="SUBMIT" />
	</form>
</div><br><br>
<%@ include file ="../headerfooter/footer.jsp" %>