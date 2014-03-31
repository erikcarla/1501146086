<%-- 
    Document   : index
    Created on : Mar 31, 2014, 11:20:13 AM
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <div id="content" >

            <form action="./DoLogin" method="post">
                <table style="border:1;margin:50px auto 100px auto" cellpadding="5px" >
                    <tr>
                        <td colspan="2" align="center"><h1>LOGIN</h1></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="user" placeholder="Username"/></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="pass" placeholder="Password"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color:#FF0000">
                            <%

                                Integer err;
                                try {
                                    err = Integer.parseInt(request.getParameter("err"));
                                } catch (Exception e) {
                                    err = null;
                                }

                                if (err != null) {

                                    if (err == 3) {
                                        out.print("Username and Password invalid");
                                    }

                                }

                            %>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" class="loginbutton"/> Or <a href="register.jsp">Register</a> </td>
                    </tr>
                </table>
            </form>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>
