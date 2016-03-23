<%-- 
    Document   : _seConnecter
    Created on : 23 mars 2016, 12:29:36
    Author     : admin
--%>

<form action="seConnecterServlet" method="post">
    <label>
        Login:
    </label>
    <input type="text" name="login"/>
    <br>
    <label>
        Mot de passe:
    </label>
    <input type="password" name="mdp"/>
    <input onclick="_reponseConnection" type="submit">
</form>