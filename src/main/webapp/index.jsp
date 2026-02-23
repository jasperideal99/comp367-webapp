<%@ page import="java.time.LocalTime" %>
<html>
<body>

<h2>
<%
    int hour = LocalTime.now().getHour();
    String name = "Ivan Ideal";

    if (hour < 12) {
        out.println("Good morning, " + name + ", Welcome to COMP367");
    } else {
        out.println("Good afternoon, " + name + ", Welcome to COMP367");
    }
%>
</h2>

</body>
</html>