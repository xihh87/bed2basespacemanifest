#!/usr/bin/awk -f 
# Joshua Haase 2015-11

# El script transforma de formato BED a manifiesto

BEGIN{
# Campos en el formato bed: cromosoma	inicio	fin	gen
	cromosoma = 1
	inicio = 2
	fin = 3
	gen = 4
# Separador en el manifiesto
	OFS="\t"
}

# Formato de manifiesto de basespace:
# 
# Encabezado generado por el script en shell
#
# Nombre(gen.cromosoma.inicio.fin)	Cromosoma	Inicio	Fin	Longitud	Downstream
{print $gen "." $cromosoma "." $inicio "." $fin, $cromosoma, $inicio, $fin, "0", "0", ""}


