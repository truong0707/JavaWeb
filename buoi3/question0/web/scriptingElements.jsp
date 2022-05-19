<%-- 
    Document   : scriptingElements
    Created on : May 18, 2022, 5:54:52 PM
    Author     : TechCare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            // Script
            for (int i = 0; i < 5; i++) {
                out.print("<h4>" + i + "</h4>");
            }
            int result = add(5, 6);
            out.print("<p> result: " + result + "<p>");
        %>
        <%= "Nguyen thanh Truong"%>
        <br><br>
        Login expression <%= 5 > 6%>
        <%!
            String name = "TruongVD";
            int add(int a, int b) {
                return a + b;
            }
        %>
    </body>
</html>
