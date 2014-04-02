/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Erik
 */
public class DoRegister extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext app = getServletContext();

        Connect con = new Connect(app);

        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String cpass = request.getParameter("cpass");
        String telephone = request.getParameter("telephone");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String query = "";
        int tot = 0;

        if (user == "") {
            response.sendRedirect("register.jsp?err=1");
        } else {
            query = "select count(*) from MsUser where Username='" + user + "'";
            ResultSet rs = con.execute(query);

            try {
                rs.next();
                tot = rs.getInt(1);
            } catch (Exception e) {
                tot = 0;
            }


            int i = 0;
            boolean cektelp = true;
            for (i = 0; i < telephone.length(); i++) {
                if (!Character.isDigit(telephone.charAt(i))) {
                    cektelp = false;
                }
            }
            
            boolean cekname = true;
            for (i = 0; i < name.length(); i++) {
             if (Character.isDigit(name.charAt(i))) {
                 cekname = false;
             }
            }
            
            boolean cekpass = true;
            for (i = 0; i < pass.length(); i++) {
                if (!Character.isDigit(pass.charAt(i)) || Character.isDigit(pass.charAt(i))) {
                    cekpass = false;
                }
            }

            boolean cekemail = true;
            int tes = 0;
            for (i = 0; i < email.length(); i++) {
                if (email.charAt(i) == '@' || email.charAt(i) == '.') {
                    tes++;
                }
            }
            if (!email.contains("@") || !email.contains(".")) {
                cekemail = false;
            }
            if (email.indexOf("@") + 2 > email.indexOf(".")) {
                cekemail = false;
            }
            if (email.length() < email.indexOf(".") + 3) {
                cekemail = false;
            }
            if (email.indexOf("@") == 0) {
                cekemail = false;
            }
            if (tes != 2) {
                cekemail = false;
            }

            if (tot > 0) {
                response.sendRedirect("register.jsp?err=8");
            } else if (pass == "") {
                response.sendRedirect("register.jsp?err=2");
            } else if (pass.length() < 6) {
                response.sendRedirect("register.jsp?err=15");
            } else if (cpass == "") {
                response.sendRedirect("register.jsp?err=3");
            } else if (!cpass.equals(pass)) {
                response.sendRedirect("register.jsp?err=14");
            } else if (name == "") {
                response.sendRedirect("register.jsp?err=16");
            } else if (!cekname) {
                response.sendRedirect("register.jsp?err=17");
            } else if (address == "") {
                response.sendRedirect("register.jsp?err=6");
            } else if (address.length() < 8) {
                response.sendRedirect("register.jsp?err=9");
            } else if (telephone == "") {
                response.sendRedirect("register.jsp?err=4");
            } else if (!cektelp) {
                response.sendRedirect("register.jsp?err=11");
            } else if (email == "") {
                response.sendRedirect("register.jsp?err=5");
            } else if (!cekemail) {
                response.sendRedirect("register.jsp?err=13");
            } else {
                User u = new User();
                u.setUsername(user);
                u.setPassword(pass);
                u.setAddress(address);
                u.setEmail(email);
                u.setName(name);
                u.setTelephone(telephone);
                u.insert(getServletContext());

                //out.print(query);
                try {
                    con.Query(query);
                } catch (Exception e) {
                }
                response.sendRedirect("register.jsp?err=7");



            }

        }




    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
