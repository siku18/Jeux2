<%-- 
    Document   : _entete
    Created on : 24 mars 2016, 08:53:44
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="entete">
        <c:if test="${sessionScope.login==null}">
                <input style="float: left" type="button" onclick="seConnecter()" value="Se connecter"/>
                <input style="float: right" type="button" onclick="inscrire()" value="Inscription"/>
            </c:if>
            <c:if test="${sessionScope.login!=null}">
                <input style="float: left" type="button" onclick="rejoindrePartie()" value="Rejoindre Partie"/>
                <input style="float: right" type="button" onclick="seDeconnecter()" value="Se deconnecter"/>
            </c:if>
        </div>