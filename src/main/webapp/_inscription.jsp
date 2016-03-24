<%-- 
    Document   : _inscription
    Created on : 23 mars 2016, 14:19:24
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <label>
        Votre login:
    </label>
    <input type="text" name="login"/>
    <br>
    <label>
       Votre mot de passe:
    </label>
    <input type="password" name="mdp"/>
    <input onclick="reponseInscription()" type="button" value="S'inscrire">
