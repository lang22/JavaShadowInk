package Servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import session.UserFacade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
@WebServlet(loadOnStartup = 1,urlPatterns = {})
public class NewServlet extends HttpServlet {
        @EJB
        private UserFacade userFacade;
        @Override
     public void init() throws ServletException {

        // store category list in servlet context
        getServletContext().setAttribute("users", userFacade.findAll());
    }
}
