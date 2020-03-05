#!/bin/bash

MPOINT=$(pwd)

cd /usr/share/texmf/tex/latex

if ! [ -d articulo ]; then
	sudo mkdir articulo
fi
sudo cp $MPOINT/Articulo/articulo.cls ./articulo/articulo.cls

if ! [ -d apuntes ]; then
    sudo mkdir apuntes
fi
sudo cp $MPOINT/Apuntes/apuntes.cls ./apuntes/apuntes.cls

if ! [ -d entrega ]; then
	sudo mkdir entrega
fi
sudo cp $MPOINT/Entrega/entrega.cls ./entrega/entrega.cls

if ! [ -d dmath ]; then
	sudo mkdir dmath
fi
sudo cp $MPOINT/Stys/dmath.sty ./dmath/dmath.sty

sudo texhash
