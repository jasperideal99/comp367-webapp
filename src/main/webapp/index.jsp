<%@ page import="java.time.LocalTime" %>
<html>
<body>

<%
	int hour = 9;
    String name = "Ivan Ideal";
    String msg = (hour < 12)
        ? "Good morning, " + name + ", Welcome to COMP367"
        : "Good afternoon, " + name + ", Welcome to COMP367";
%>

<h2><%= msg %></h2>

</body>
</html>