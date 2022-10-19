echo "Call bash taxabarplot.sh table taxonomy metadata"
qiime taxa barplot \
--i-table $1 \
--i-taxonomy $2 \
--m-metadata-file $3 \
--o-visualization barplot_${1}_dir
