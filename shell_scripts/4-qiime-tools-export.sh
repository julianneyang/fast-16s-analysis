
echo "Takes qza input file as input and cranks out tsv and summary.txt file" $1 
qiime tools export --input-path $1 --output-path  export_${1%.*}
cd export_${1%.*}
biom summarize-table -i feature-table.biom -o biom-summary.txt 
biom convert -i feature-table.biom -o feature-table.tsv --to-tsv --header-key taxonomy
 

