echo "Enter filepath of filtered ASV table.qza file" $1 
echo "This will perform Robust Aitchison PCA on a count matrix"

qiime deicode rpca --i-table $1 --o-biplot biplot_rpca_${1} --o-distance-matrix dm_rpca_${1}
qiime diversity pcoa --i-distance-matrix dm_rpca_${1} --o-pcoa pcoa_rpca_${1}
qiime tools export --input-path pcoa_rpca_${1} --output-path pcoa_rpca_${1}.txt  
qiime tools export --input-path dm_rpca_${1} --output-path dm_rpca_${1}.txt

