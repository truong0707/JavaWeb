<%-- 
    Document   : sub-page
    Created on : Apr 23, 2022, 8:52:08 AM
    Author     : TechCare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo of include jsp page inside</title>
    </head>
    <body>
        <!-- connect header -->
        <jsp:include page="my-header.jsp"></jsp:include>
        <section>
            This is the dynamic content
        </section
        
        
        <!-- connect footer -->
        <jsp:include page="my-footer.jsp"></jsp:include>
    </body>
</html>
