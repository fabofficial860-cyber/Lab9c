<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("uname");
int time = Integer.parseInt(request.getParameter("time"));

// Store in session
session.setAttribute("user", name);

// Set user-defined expiry
session.setMaxInactiveInterval(time);
%>

<h2>Hello <%= name %>!</h2>

<p>Session started successfully.</p>
<p>Session expiry time: <%= time %> seconds</p>

<p>
Click below within the given time OR wait for expiry:
</p>

<a href="second.jsp">Check Session</a>

</body>
</html>