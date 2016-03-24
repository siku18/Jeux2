<%-- 
    Document   : _reponseInscription
    Created on : 23 mars 2016, 14:21:04
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${joueurInscrit==true}" >
     <script> alert ("Vous etes inscrit !");</script>
</c:if>
<c:if test="${joueurInscrit==false}" >
    <script> alert ("Ce login est deja utilise, essayer un autre login ! !");</script>
    <br>
    <c:import url="_inscription.jsp"/>
</c:if>
