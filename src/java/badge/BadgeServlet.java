/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package badge;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cwm24
 */
public class BadgeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Parameters p = new Parameters();
        
        String name = request.getParameter("name");
        String textcolors = request.getParameter("textcolors");
        String bgcolors = request.getParameter("bgcolors");
        String shape = request.getParameter("shape");
        String x = request.getParameter("x");
        String y = request.getParameter("y");
        String fstyle = request.getParameter("fstyle");
        String ftsize = request.getParameter("ftsize");
        
        p.setName(name);
        p.setBgcolor(bgcolors);
        p.setColorString(textcolors);
        p.setShape(shape);
        p.setStringX(x);
        p.setStringY(y);
        p.setFtstyle(fstyle);
        p.setFtsizeString(ftsize);
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet BadgeServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<p> name: " + p.getName()+ "</p>");
//            out.println("<p> bgcolor: " + p.getBgcolor()+ "</p>");
//            out.println("<p> shape: " + p.getShape()+ "</p>");
//            out.println("<p> ftsizeString: " + p.getFtsizeString()+ "</p>");
//            out.println("</body>");
//            out.println("</html>");
//        }
        
        HttpSession session = request.getSession();
        session.setAttribute("Parameters", p);

        // forward the request (not redirect)
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");;
        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
