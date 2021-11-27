
PATH=/usr/bin/ 
CONFIG=${HOME}/.config/ 

.PHONY: install verbose

install:
	cp ./ctty.sh ${PATH}/ctty #
	cp -r ./ctty ${CONFIG} #Install config dir 
	cp -r ./cttyser /etc/sv/ctty #Install service file 

verbose: 
	echo "${PATH}"
	echo "${CONFIG}"
