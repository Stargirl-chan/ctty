#Color schemes can be defined here!
#Made so the main file stays clean

#Naming schemes for colors are 'color_scheme_N' where N is some name
#Only the value of N is relevant for the end-user, the rest is internal

#Please keep that naming scheme and please only have 1 underscore in the
#color scheme name..
#Examples: 'solarized_dark', 'light_bubblegum', 'inverted_madness'
#If you use more than 1 underscore per name the main script will fail!

color_scheme_solarized_dark() {
	#From: https://ethanschoonover.com/solarized/
	fg=839496
	bg=002b36

	dark_black=$bg
	dark_red=dc322f
	dark_green=859900
	dark_yellow=b58900
	dark_blue=268bd2
	dark_magenta=d33682
	dark_cyan=2aa198
	dark_white=$fg

	light_black=002b36
	light_red=cb4b16
	light_green=586e75
	light_yellow=657b83
	light_blue=839496
	light_magenta=6c71c4
	light_cyan=93a1a1
	light_white=fdf6e3
}

color_scheme_solarized_light() {
	#From: https://ethanschoonover.com/solarized/
	fg=657b83
	bg=fdf6e3

	dark_black=$bg
	dark_red=dc322f
	dark_green=859900
	dark_yellow=b58900
	dark_blue=268bd2
	dark_magenta=d33682
	dark_cyan=2aa198
	dark_white=$fg

	light_black=002b36
	light_red=cb4b16
	light_green=586e75
	light_yellow=657b83
	light_blue=839496
	light_magenta=6c71c4
	light_cyan=93a1a1
	light_white=fdf6e3
}

#Note: Solarized colors will be off..
#Since we cannot define fore- and background differently.
#I still hope that it looks pleasant to the users who like solarized
