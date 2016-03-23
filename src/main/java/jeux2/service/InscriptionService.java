/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeux2.service;

import java.util.List;
import jeux2.entity.Joueur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import jeux2.service.Crud.JoueurService;

/**
 *
 * @author admin
 */
@Service
public class InscriptionService {

    @Autowired
    private JoueurService utilisateurService;

    public Boolean inscription(Joueur u) {
        List<Joueur> listeUtilisateurs = (List<Joueur>) utilisateurService.findAll();
        if (!listeUtilisateurs.isEmpty()){
            for (Joueur u2 : listeUtilisateurs) {
                if (u.getLogin().equals(u2.getLogin())) {
                    return false;
                }
            }
        }
        utilisateurService.save(u);
        return true;
    }

}
