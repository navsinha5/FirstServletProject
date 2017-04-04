<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
</head>
<body>
<%
String user = (String) session.getAttribute("user");
String sessionID = null;
String userName = null;

Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("user")){
			userName = cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionID = cookie.getValue();
		}
	}
}
if(userName == null){
	response.sendRedirect("/FirstServletProject/HTMLS/Login.html");
}
%>
<h2>Well done <%=userName %>, Login Successful</h2>
<br>
<h3><%=user%> Your session ID is <%=sessionID %></h3>
<br>
<a href="CheckoutPage.jsp">checkout</a>
<br>
<form action="/FirstServletProject/LogoutServlet" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>