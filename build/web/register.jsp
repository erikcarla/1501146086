<%-- 
    Document   : register
    Created on : Mar 31, 2014, 6:44:26 PM
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
            <h1 style="color:black">Register </h1>
            <form action="./DoRegister" method="post">
                <table style="margin:50px auto 100px auto" cellpadding="5px" >
                    <tr>
                        <td colspan="2" align="center">PLEASE FILL OUT THE FORM PROVIDED</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="user" placeholder="Username"/></td>
                    </tr>
                    <tr>                            
                        <td><input type="password" name="pass" placeholder="Password" /></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="cpass" placeholder="Confirm Password"/></td>
                    </tr>    
                    <tr>
                        <td><input type="text" name="name" placeholder="Your Name"/></td>
                    </tr>
                    <tr>                            
                        <td><input type="text" name="telephone" placeholder="Telephone"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" placeholder="Email"/></td>
                    </tr>
                    <tr>                            
                        <td><textarea name="address" placeholder="Address"></textarea></td>
                    </tr>
                    <td colspan="2" style="color:#FF0000">
                        <%
                            Integer err;
                            try {
                                err = Integer.parseInt(request.getParameter("err"));
                            } catch (Exception e) {
                                err = null;
                            }
                            if (err != null) {
                                if (err == 1) {
                                    out.print("Username must be filled !");
                                } else if (err == 2) {
                                    out.print("Password must be filled !");
                                } else if (err == 3) {
                                    out.print("Confirm password must be filled !");
                                } else if (err == 4) {
                                    out.print("Telephone must be filled !");
                                } else if (err == 5) {
                                    out.print("Email must be filled !");
                                } else if (err == 6) {
                                    out.print("Address must be filled !");
                                } else if (err == 7) {
                                    out.print("Registration success!");
                                } else if (err == 8) {
                                    out.print("Username already exist!");
                                } else if (err == 9) {
                                    out.print("Address must be filled at least 8 characters");
                                } else if (err == 11) {
                                    out.print("Telephone must be numbers");
                                } else if (err == 13) {
                                    out.print("Email in accordance with the format of email");
                                } else if (err == 14) {
                                    out.print("Confirm password must be same as password");
                                } else if (err == 15) {
                                    out.print("Password must be length 6 characters");
                                } else if (err == 16) {
                                    out.print("Name must be filled!");
                                } else if (err == 17) {
                                    out.print("Name must characters!");
                                }
                            }
                        %>
                    </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Register" class="loginbutton"/> </td>
                    </tr>
                </table>
            </form>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>
