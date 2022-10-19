echo "call bash rarefaction-curve.sh table.qza rarefaction-depth-integer"
qiime diversity alpha-rarefaction --i-table $1 --p-max-depth $2 --o-visualization ${1%.*}.qzv
