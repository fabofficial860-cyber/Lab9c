<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Session Status</title>
</head>
<body>

<h2>Session Result</h2>

<%
String name = (String) session.getAttribute("user");

if (name == null) {
%>
    <h3 style="color:red;">Sorry! Session has expired.</h3>
<%
} else {
%>
    <h3 style="color:green;">Hello <%= name %>!</h3>
<%
}
%>

</body>
</html>