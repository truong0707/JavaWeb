<%-- 
    Document   : ArrayList
    Created on : May 18, 2022, 6:12:24 PM
    Author     : TechCare
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ArrayList!</h1>
        <%
            ArrayList<Integer> ds = new ArrayList<Integer>();
            for (int i = 0; i < 10; i++) {
                ds.add(i);
            }
            for (int i = 0; i < 10; i++) {
                out.print(ds.get(i) + "  ");
            }
        %>
    </body>
</html>
