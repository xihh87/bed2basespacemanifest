%.txt: beds/%.bed
	./bed2basespacemanifest beds/$stem.bed > basespace-manifests/$stem.txt

clean:
	rm basespace-manifests/*.txt
