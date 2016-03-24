/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeux2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jeux2.entity.Joueur;
import jeux2.spring.AutowireServlet;
import org.springframework.beans.factory.annotation.Autowired;
import jeux2.service.Crud.JoueurService;

/**
 *
 * @author admin
 */
@WebServlet(name = "SeConnecterServlet", urlPatterns = {"/seConnecterServlet"})
public class SeConnecterServlet extends AutowireServlet {

    @Autowired
    private JoueurService joueurService;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Joueur> listeJoueurs = new ArrayList<>();
        listeJoueurs = (List<Joueur>) joueurService.findAll();
        
        boolean joueurConnecter=false;
        
        if (!listeJoueurs.isEmpty()) {
            for (Joueur u : listeJoueurs) {
                if (u.getLogin().equals(req.getParameter("login"))) {
                    if (u.getMdp().equals(req.getParameter("mdp"))) {
                        req.getSession().setAttribute("login", req.getParameter("login"));
                        req.getSession().setAttribute("mdp", req.getParameter("mdp"));
                        joueurConnecter=true;
                    }
                }
            }
        }
        req.setAttribute("joueurConnecter", joueurConnecter);
        req.getRequestDispatcher("_reponseConnection.jsp").include(req, resp);
    }
}
