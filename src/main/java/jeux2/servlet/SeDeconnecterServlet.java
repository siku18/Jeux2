/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeux2.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jeux2.spring.AutowireServlet;

/**
 *
 * @author admin
 */
@WebServlet(name = "SeDeconnecterServlet", urlPatterns = {"/SeDeconnecterServlet"})
public class SeDeconnecterServlet extends AutowireServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        req.getRequestDispatcher("_deconnecte.jsp").forward(req, resp);
        }
    }
