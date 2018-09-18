/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.UserFacade;

/**
 *
 * @author shao
 */
@WebServlet(name = "updateServlet", urlPatterns = {"/update"})
public class updateServlet extends HttpServlet {

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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String new_password = request.getParameter("new_password");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateServlet at " + request.getContextPath() + "</h1>");
//            em.getTransaction().begin();
//            Query query=em.createQuery("update User set password=:new_password where username=:username and password = :password");
//            query.setParameter("username", username);
//            query.setParameter("password",password);
//            query.setParameter("new_password",new_password);
//            query.executeUpdate();
//            em.getTransaction().commit();
//            List<User> users_list =  em.createNamedQuery("User.findByUsername")
//            .setParameter("username",username).getResultList();
//            
//            if (users_list != null) {
//                if (users_list.get(0).getPassword().equals(password)) {
//                    out.println("开始修改");
////                    users_list.get(0).setPassword(new_password);
//                    String jpql = "UPDATE user set password=:new_password where username =:username and password = :password";
//                    Query query = em.createQuery(jpql);
//                    query.setParameter("username",username).setParameter("password",password).setParameter("new_password",new_password);
//                    query.executeUpdate();
//                    out.println("修改成功");
//                }
//                else{
//                    out.println("密码输入不正确");
//                }
//            }
//            else{
//                out.println("不存在该用户");
//            }

            EntityManagerFactory factory=Persistence.createEntityManagerFactory("credream");
            EntityManager em=factory.createEntityManager();
              Query query=em.createQuery("update  user set password = :newpassword where username= :username and password = :password");
              query.setParameter("username", username).setParameter("password", password).setParameter("newpassword", new_password);
              query.executeUpdate(); 
            em.close();
            factory.close();
            out.println("修改成功<br>");
            out.println("</body>");
            out.println("</html>");
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
