<%-- 
    Document   : _reponseConnection
    Created on : 23 mars 2016, 13:51:47
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${joueurConnecter==true}" >
    Vous etes connecte !
</c:if>
<c:if test="${joueurConnecter==false}" >
    Login ou mot de passe incorect
    <c:import url="_seConnecter.jsp"/>
</c:if>