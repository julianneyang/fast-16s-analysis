for i in {1..7};
do qiime taxa collapse \
	--i-table $1 \
	--i-taxonomy $2 \
	--p-level $i \
	--o-collapsed-table L${i}_${1} 
done
