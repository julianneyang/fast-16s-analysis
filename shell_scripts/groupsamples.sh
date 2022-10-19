echo "Call bash groupsamples.sh asv-table.qza metadata-file metadata-column"
qiime feature-table group \
--i-table $1 \
--p-axis sample \
--m-metadata-file $2 \
--m-metadata-column $3 \
--p-mode mean-ceiling \
--o-grouped-table groupby_${3}_${1}

