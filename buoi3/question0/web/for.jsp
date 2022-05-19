<%-- 
    Document   : for
    Created on : May 18, 2022, 5:15:07 PM
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
        <form name="for_n" method="get">
            Nhập n: <input type="text" name="soLuong"> <br><br>
            <%
                String s = request.getParameter("soLuong");

                if (s != null) {
                    int n = Integer.parseInt(s);
                    for (int i = 0; i < n; i++) {
                        out.print("<b>" + 1 + "</b>");
                        out.print("<br>");
                    }
                } else {
                    out.print("<b>Nhập lại n!!!</b>");
                }
            %>
        </form>
    </body>
</html>
