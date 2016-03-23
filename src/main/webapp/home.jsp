<%-- 
    Document   : home
    Created on : 23 mars 2016, 12:05:32
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="javaScript/jquery-2.2.2.js" type="text/javascript"></script>
        <script src="javaScript/Jeux2.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="entete">
            <c:if test="${sessionScope.login==null}">
                <input style="text-align: left" type="button" onclick="seConnecter()" value="Se connecter"/>
                <input style="text-align: right" type="button" onclick="inscrire()" value="Inscription"/>
            </c:if>
            <c:if test="${!sessionScope.login!=null}">
                <input type="button" onclick="creationPartieServlet" value="Se connecter"/>
            </c:if>
        </div>
        <div class="contenu">
        </div>
        <div class="pied">Pied</div>
    </body>
</html>
