echo "Call bash make_tree_for_picrust2.sh rep-seqs.qza number_of_threads reference_database.qza"
qiime fragment-insertion sepp --i-representative-sequences $1 --p-threads $2 --i-reference-database $3 --output-dir picrust_tree
