#!/usr/bin/awk -f 

# Formato bed
# cromosoma	inicio	fin	gen
BEGIN{
	gen = 4
	inicio = 2
	fin = 3
	cromosoma = 1
	OFS="\t"
	printf("#Agilent HaloPlex Miocardiopatias y canalopatias  Genomic regions expected to be amplified.\t\t\t\t\t\t\n[Header]\t\t\t\t\t\t\nReferenceGenome\tC:\\Illumina\\MiSeq Reporter\\Genomes\\Homo_sapiens\\UCSC\\hg19\\Sequence\\WholeGenomeFASTA\t\t\t\t\t\n[Regions]\t\t\t\t\t\t\nName\tChromosome\tAmplicon Start\tAmplicon End\tUpstream Probe Length\tDownstream Probe Length\tGroup\n")
}

# Formato de manifiesto de basespace:
# Nombre (gen.cromosoma.inicio.fin)	Cromosoma	Inicio	Fin	Longitud	Downstream



{print $gen "." $cromosoma "." $inicio "." $fin, $cromosoma, $inicio, $fin, "0", "0", ""}


