cafe()
 {
     clear
     echo "- Fais moi un café, connard !"
     echo "- Vas le faire toi même grosse feignasse !"
     echo 
     echo "1 : -Tu vas aller le faire tout de suite gros con !"
     echo "2 : -Ok ! Ne t'énerve pas !"
     echo  
 
     read DEMANDE
     clear
     echo "- Fais moi un café, connard !"
     echo "- Vas le faire toi même grosse feignasse !"
 
     case "$DEMANDE" in
 
         1)  echo "- Tu vas aller le faire tout de suite gros con !"
 
             echo "- Ok Patron !"
             echo "* Il va voir ce qu'il va voir..."
             sleep 5  ;;
 
         2)  echo "- Ok ! Ne t'énerve pas !"
             echo "- Mais je ne m'enerve pas patron. Attendez j'y vais."
             sleep 5 ;;
     esac
 
     echo "- Voila patron, j'ai votre cafe !"
     sleep 5
     BoireCafe
 }
 
 BoireCafe ()
 {
     clear
     echo "Voulez-vous boire votre cafe ?"
     echo 
     echo "1) Ben oui, je l'ai demandé pour ça, crétin des Alpes !"
     echo "2) Oui, merci beaucoup voix dans ma tête."
     echo "3) Hum, non, je verrai ça plus tard."
     read DEMANDE
}
