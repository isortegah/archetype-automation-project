#!/bin/bash
clear; echo "Ejecución de shell"
cd ..
echo "---> Inicia la instalación"
echo ""
mvn install
if [ $? -eq 0 ] ; then
	clear; echo "Instalación de archetype exitosa";echo ""
else
	echo "Falló el proceso en mvn"
	fi
echo ""
echo "---> Inicia generación de proyecto"
echo ""
cd workplace
if [ -d "validations" ] ; then
	echo "---> Borrando proyecto anterior"
	rm -r validations
	echo ""
	fi

./setup.sh
cd validations
mvn install 
pwd
tree
mvn verify

tree src