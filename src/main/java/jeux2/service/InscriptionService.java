/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeux2.service;

import java.util.List;
import jeux2.entity.Utilisateur;
import jeux2.service.Crud.UtilisateurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class InscriptionService {

    @Autowired
    private UtilisateurService utilisateurService;

    public Boolean inscription(Utilisateur u) {

        List<Utilisateur> listeUtilisateurs = (List<Utilisateur>) utilisateurService.findAll();
        if (!listeUtilisateurs.isEmpty()){
            for (Utilisateur u2 : listeUtilisateurs) {
                if (u.getLogin().equals(u2.getLogin())) {
                    return false;
                }
            }
        }
        utilisateurService.save(u);
        return true;
    }

}
