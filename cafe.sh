# Nom de la boisson (lecture seule)
declare -r _kfe_nom=${KFE_NOM-café}

_kfe_demande()
{
	local -i i=0
	local res;

	while [ $# -gt 0 ]
	do
		let i++
		echo "$i : — $1" >/dev/tty
		shift
	done
	echo

	read res
	echo "$res"
}

_kfe_init()
{
	clear
	echo "- Fais moi un $_kfe_nom, connard !"
	echo "- Vas le faire toi même, grosse feignasse !"
	echo

	DEMANDE=$( _kfe_demande \
		"Tu vas aller le faire tout de suite, gros con !" \
		"Ok ! Ne t’énerves pas !"
	)

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

	DEMANDE=$( _kfe_demande \
		"Ben oui, je l’ai demandé pour ça, crétin des Alpes !" \
		"Oui, merci beaucoup, voix dans ma tête." \
		"Hum, non, je verrai ça plus tard." \
	)
}

alias $_kfe_nom=_kfe_init
