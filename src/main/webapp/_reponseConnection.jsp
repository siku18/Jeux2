<%-- 
    Document   : _reponseConnection
    Created on : 23 mars 2016, 13:51:47
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${joueurConnecter==true}" >
    <script> alert ("Vous etes connecte !");</script>
</c:if>
<c:if test="${joueurConnecter==false}" >
    <script> alert ("Login ou mot de passe incorect");</script>
    <br>
    <c:import url="_seConnecter.jsp"/>
</c:if>