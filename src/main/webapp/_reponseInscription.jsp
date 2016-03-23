<%-- 
    Document   : _reponseInscription
    Created on : 23 mars 2016, 14:21:04
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${joueurInscrit==true}" >
    Vous etes inscrit !
</c:if>
<c:if test="${joueurInscrit==false}" >
    Ce login est deja utilise, essayer un autre login !
    <c:import url="_inscription.jsp"/>
</c:if>
