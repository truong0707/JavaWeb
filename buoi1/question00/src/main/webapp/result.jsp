<%-- 
    Document   : result
    Created on : Apr 17, 2022, 7:34:06 AM
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
