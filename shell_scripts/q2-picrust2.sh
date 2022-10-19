echo "Call bash q2-picrust2.sh table.qza tree.qza outputdirname"
qiime picrust2 custom-tree-pipeline \
	--i-table $1\
	--i-tree $2 \
	--output-dir picrust2_output_${1%.}\
	--p-threads 20\
	--p-hsp-method mp\
	--p-max-nsti 2\
	--verbose
