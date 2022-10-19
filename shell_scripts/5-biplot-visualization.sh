echo "Enter filepath to biplot.qza" $1
echo "Enter filepath to metadata.tsv" $2
qiime emperor biplot --i-biplot $1 --m-sample-metadata-file $2 --o-visualization ${1}.qzv
