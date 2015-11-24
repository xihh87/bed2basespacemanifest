#!/usr/bin/awk -f 
# Joshua Haase 2015-11

# El script transforma de formato BED a manifiesto para basespace

BEGIN{
# Campos en el formato bed: cromosoma	inicio	fin	anotaciones
	cromosoma = 1
	inicio = 2
	fin = 3
	anotaciones = 4
# Separador en el manifiesto
	OFS="\t"
}


function gen_name(s) {
	# Elegir la primer anotación que contenga "ref|", o la primer anotación.
	split(s, tmp, ",")
	gen = tmp[1]
	n = length(tmp)
	for (i=1; i<=n; i++) {
		if (tmp[i] ~ /^ref\|/) {
			gen=substr(tmp[i], 5, length(tmp[i]) - 4);
			break
		}
	}
	delete tmp
	return gen
}

# Formato de manifiesto de basespace:
# 
# Encabezado generado por el script en shell
#
# Nombre(gen.cromosoma.inicio.fin)	Cromosoma	Inicio	Fin	Longitud	Downstream
{
	gen = gen_name($anotaciones)
	print gen "." $cromosoma "." $inicio "." $fin, $cromosoma, $inicio, $fin, "0", "0", ""
}
