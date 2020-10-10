#!/bin/sh

version="0.1"

#Defining available color schemes.
#There are 16 colors we can define.
#Colors 0-7 are the dark colors,
#Colors 8-f are the light colors.

#Normally in a graphical terminal we can define foreground and background
#colors separately. This is sadly not possible in TTY.

#Therefore I sacrificed the colors of black and white for fore- and background.

#Color indices are as following:
: '
	dark_black:		0
	dark_red:		1
	dark_green:		2
	dark_yellow:	3
	dark_blue:		4
	dark_magenta:	5
	dark_cyan:		6
	dark_white:		7

	light_black:	8
	light_red:		9
	light_green:	a
	light_yellow:	b
	light_blue:		c
	light_magenta:	d
	light_cyan:		e
	light_white:	f

'

color_scheme_default() {
	fg=c5c8c6
	bg=1d1f21

	dark_black=$bg
	dark_red=ab0000
	dark_green=afc200
	dark_yellow=ff6800
	dark_blue=006dc8
	dark_magenta=7800a1
	dark_cyan=00a38e
	dark_white=$fg

	light_black=373b41
	light_red=ff0000
	light_green=e7ff00
	light_yellow=ffa900
	light_blue=008aff
	light_magenta=c400ff
	light_cyan=00ffdd
	light_white=c8c8c8
}

color_scheme_hyper() {
	fg=ffffff
	bg=1d1f21

	dark_black=$bg
	dark_red=fe0100
	dark_green=33ff00
	dark_yellow=feff00
	dark_blue=0066ff
	dark_magenta=cc00ff
	dark_cyan=00ffff
	dark_white=$fg

	light_black=808080
	light_red=fe0100
	light_green=33ff00
	light_yellow=feff00
	light_blue=0066ff
	light_magenta=cc00ff
	light_cyan=00ffff
	light_white=ffffff
}

#Naming schemes for colors are 'color_scheme_N' where N is some name
#Only the value of N is relevant for the end-user, the rest is internal
list_schemes() {
	compgen -A function | grep "color_scheme_" | cut -d_ -f3
}

#Checks if the given scheme is available, if not it returns 0
check_scheme() {
	ret=0
	list=$(list_schemes)
	for scheme in $list; do
		if [ $1 == $scheme ]; then
			ret=1
			break
		else
			ret=0
		fi
	done
	echo $ret
	return $ret
}

help_function() {
	echo ""
	echo "Usage: $0 [-chvl] <Argument>"
	echo -e "\t-c\tset the color scheme"
	echo -e "\t-h\tprint this help screen"
	echo -e "\t-l\tlist available color schemes"
	echo -e "\t-v\tprint version"
	exit 1
}

while getopts "c:hlv" opt
do
	case "$opt" in
		c ) arg_c="$OPTARG" ;;
		h ) help_function ;;
		l ) list_schemes ;;
		v ) echo "Version: $version" ;;
		? ) help_function ;;
	esac
done

if [[ $OPTIND -eq 1 ]]; then
	echo "No parameters given.."
	help_function
fi

if ! [[ -z "${arg_c// }" ]]; then
	if [[ $(check_scheme $arg_c) -eq 1 ]]; then
		echo "Using color scheme: $arg_c"
		color_scheme_$arg_c
		printf %b "\e]P0$bg" 				\
					"\e]P7$fg" 				\
					"\e]P1$dark_red" 		\
					"\e]P2$dark_green" 		\
					"\e]P3$dark_yellow" 	\
					"\e]P4$dark_blue" 		\
					"\e]P5$dark_magenta"	\
					"\e]P6$dark_cyan" 		\
					"\e]P8$light_black" 	\
					"\e]P9$light_red" 		\
					"\e]Pa$light_green" 	\
					"\e]Pb$light_yellow" 	\
					"\e]Pc$light_blue" 		\
					"\e]Pd$light_magenta" 	\
					"\e]Pe$light_cyan" 		\
					"\e]Pf$light_white"

	else
		echo "Invalid color scheme given, please see the list of available color schemes."
	fi
fi
