/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function seConnecter(){
    $('.contenu').load("_seConnecter.jsp");
    
}

function inscrire(){
    $('.contenu').load("_inscription.jsp");
}

function attendreAvantRafffraichirEntete(){
setTimeout( function(){
    rafraicherEntete();
},1000)
};

function listerPartie(){
     $('.contenu').load(ListerPartieServlet);
}

function reponseConnection(){
    $('.contenu').load("seConnecterServlet",{ login: $('[name=login]').val(), mdp: $('[name=mdp]').val()});
    attendreAvantRafffraichirEntete()();
    ;
}
function reponseInscription(){
    $('.contenu').load("InscriptionJoueurServlet",{ login: $('[name=login]').val(), mdp: $('[name=mdp]').val()});
}

function seDeconnecter(){
    $('.contenu').load("SeDeconnecterServlet");
    attendreAvantRafffraichirEntete();
}

function rafraicherEntete(){
$('.entete').load("_entete.jsp");
}

function rafraicherContenu(){
$('.contenu').load("_contenu.jsp");
}

function rafraicherPied(){
$('.pied').load("_pied.jsp");
}

