package Servlet;

import session.UserFacade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.*;
import javax.ejb.EJB;
/**
 *
 * @author lang22
 */
//@WebServlet(urlPatterns={"/register"})
public class RegisterServlet extends HttpServlet {

    @EJB
    private UserFacade userFacade;

    
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
        String name  =request.getParameter("name") ;
        String password = request.getParameter("password");
        if(name==null || password == null){
                response.sendRedirect("./register.html");
        }
        else{
            name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
            //向数据库中插入一条记录
            boolean isInsertionSuccessful= true;
            User newUser=new User(3,name,password);
            userFacade.create(newUser);
            if (isInsertionSuccessful){
                getServletContext().setAttribute("HelloMessage","注册成功，请登录!");
                response.sendRedirect("./loginFail.jsp");
            }
            else{
                getServletContext().setAttribute("HelloMessage","用户名非法或已存在，请重新输入!");
                response.sendRedirect("./loginFail.jsp");
            }
        }
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

