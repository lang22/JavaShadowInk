package Servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import entity.*;
import static entity.User_.username;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.UserFacade;

/**
 *
 * @author lang22
 */
@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
     @EJB
     private UserFacade userFacade;
     @PersistenceContext
     public EntityManager em;
     @Override
     public void init() throws ServletException {
        // store category list in servlet context
        getServletContext().setAttribute("users", userFacade.findAll());
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String name  = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
        String password = request.getParameter("password");
        List<User> users =  userFacade.getEntityManager().createNamedQuery("User.findByUsername")
                .setParameter("username",name).getResultList();
        boolean isExist = (users!=null && !users.isEmpty());//判断用户名是否存在
        boolean isConsistent = true;//判断密码是否正确
       
        if(name == null || password == null){
            response.sendRedirect("./login.html");
            return;
        }
        
        if(isExist){
            for(User user : users){
                isConsistent=(user.getPassword().equals(password));
                if(isConsistent){
                    getServletContext().setAttribute("HelloMessage", "欢迎回来！亲爱的"+name);
                    response.sendRedirect("./LoginSuccessful.jsp");
                }
                else{
                        getServletContext().setAttribute("HelloMessage", "密码错误，请重试！");
                        response.sendRedirect("./loginFail.jsp");
                    }
            }
            
        }
        else{
                getServletContext().setAttribute("HelloMessage", "用户名不存在，请重试！");
                response.sendRedirect("./loginFail.jsp");
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
