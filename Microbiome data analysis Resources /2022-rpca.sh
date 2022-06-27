echo "Enter filepath of filtered ASV table.qza file" $1 

qiime deicode rpca --i-table $1 --o-biplot "${1%.qza}_biplot.qza" --o-distance-matrix "${1%.qza}_distmatrix.qza"
