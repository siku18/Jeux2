<%-- 
    Document   : _listePartie
    Created on : 24 mars 2016, 10:25:50
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:forEach items="${listeParties}" var="Partie">
    Nom:${Partie.nom} Etat:${Partie.typePartie}
    <c:if test="${Partie.typePartie=='OUVERTE'}">
        <input type="button" value="Rejoindre">
    </c:if>
</c:forEach>
