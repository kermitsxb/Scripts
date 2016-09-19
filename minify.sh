#!/bin/bash
#
# Script de minification des script js
# 
# Usage : bash minify.sh [CHEMIN]
# 


NC='\033[0m' # No Color
GREEN='\033[0;32m'
ORANGE='\033[0;33m'

if [ $# -ge 1 ]; then
	cd "$1"
	echo Moving to `pwd`
fi

for FILE in $(ls -R | awk '
/:$/&&f{s=$0;f=0}
/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
NF&&f{ print s"/"$0 }')
do
	if [[ "$(basename "${FILE}")" == *.js ]]; then
		if [ ! -d "$(dirname ./min/"${FILE:2}")" ]; then
			DIR="$(dirname ./min/"${FILE:2}")"
			#echo ${FILE:2}
			echo -e "${ORANGE}/!\ ${NC}Directory $DIR does not exists !"
			eval "mkdir ${DIR}"
			echo -e "${ORANGE}/!\ ${NC}Directory $DIR created : ${GREEN}OK${NC}"
		fi

		eval "uglifyjs -o ./min/${FILE:2} --compress --mangle -- $FILE"
		echo -e "$FILE minified : ${GREEN}OK${NC}"
	fi
done