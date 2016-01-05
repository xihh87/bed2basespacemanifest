Este proyecto genera un manifiesto para su uso en [basespace](https://basespace.illumina.com/home/index )
a partir de un archivo [.bed](http://genome.ucsc.edu/FAQ/FAQformat#format1 ).

# Dependencias

Para poder usar este software, es necesario instalar:

- mk (generalmente dentro de `9base`)
- awk
- sh

# Iniciar el uso

Para usar el script:

    mk init

Esto generará dos carpetas: `beds` y `basespace-manifests`.

# Generar manifiestos

Para generar los manifiestos:

1. Agregar el archivo BED en la carpeta `beds`.

2. Ejecutar el comando

    mk

Esto generará el manifiesto dentro de la carpeta `basespace-manifests`.
