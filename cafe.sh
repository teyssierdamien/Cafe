# Nom de la boisson (lecture seule)
declare -r _kfe_nom=${KFE_NOM-café}

_kfe_init()
 {
     clear
     echo "- Fais moi un $_kfe_nom, connard !"
     echo "- Vas le faire toi même, grosse feignasse !"
     echo 
     echo "1 : - Tu vas aller le faire tout de suite, gros con !"
     echo "2 : - Ok ! Ne t’énerves pas !"
     echo  
 
     read DEMANDE
     clear
     echo "- Fais moi un $_kfe_nom, connard !"
     echo "- Vas le faire toi même, grosse feignasse !"
 
     case "$DEMANDE" in
 
         1)  echo "- Tu vas aller le faire tout de suite gros con !"
 
             echo "- Ok Patron !"
             echo "* Il va voir ce qu’il va voir…"
             sleep 5  ;;
 
         2)  echo "- Ok ! Ne t’énerves pas !"
             echo "- Mais je ne m’enerve pas, patron. Attendez, j’y vais !"
             sleep 5 ;;
     esac
 
     echo "- Voilà patron, j’ai votre $_kfe_nom !"
     sleep 5
     _kfe_boire
 }
 
 _kfe_boire ()
 {
     clear
     echo "Voulez-vous boire votre $_kfe_nom ?"
     echo 
     echo "1) Ben oui, je l’ai demandé pour ça, crétin des Alpes !"
     echo "2) Oui, merci beaucoup, voix dans ma tête."
     echo "3) Hum, non, je verrai ça plus tard."
     read DEMANDE
}

alias $_kfe_nom=_kfe_init
