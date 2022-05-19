<%-- 
    Document   : result
    Created on : Apr 16, 2022, 8:31:00 AM
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
        <h1>Calculator</h1>
        <%=request.getAttribute("RS")%><HR>
        <Form action="CalController" method="GET" >
            <input type="submit" value="Continue"/>
        </form>
    </body>
</html>
