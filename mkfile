TARGETS=`{for i in beds/*; do echo basespace-manifests/$(basename $i .bed).txt; done}

all:V: $TARGETS

basespace-manifests/%.txt: beds/%.bed
	./bed2basespacemanifest beds/$stem.bed > basespace-manifests/$stem.txt

clean:V:
	rm basespace-manifests/*.txt
