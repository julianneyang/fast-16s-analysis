echo "Enter filepath to tsv containing ASV count data" $1
biom convert -i $1 -o ${1%.*}.biom --table-type="OTU table" --to-hdf5 
qiime tools import --input-path ${1%.*}.biom \
	--type 'FeatureTable[Frequency]' \
	--input-format BIOMV210Format \
	--output-path ${1%.*}.qza
biom summarize-table -i ${1%.*}.biom -o ${1%.*}_summary.txt 

