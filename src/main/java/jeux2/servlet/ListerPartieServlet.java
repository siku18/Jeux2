/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeux2.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jeux2.entity.Partie;
import jeux2.service.Crud.PartieService;
import jeux2.spring.AutowireServlet;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author admin
 */
@WebServlet(name = "ListerPartieServlet", urlPatterns = {"/ListerPartieServlet"})
public class ListerPartieServlet extends AutowireServlet {
    
    @Autowired
    PartieService partieService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Partie> listeParties = (List<Partie>) partieService.findAll();
        req.setAttribute("listeParties", listeParties);
        req.getRequestDispatcher("_listePartie.jsp").forward(req, resp);
        }
    }
