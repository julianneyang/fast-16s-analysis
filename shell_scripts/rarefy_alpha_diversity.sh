echo "Call bash rarefy_alpha_diversity.sh table.qza sampling_depth_integer"
qiime feature-table rarefy \
	--i-table $1 \
	--p-sampling-depth $2 \
	--o-rarefied-table d${2}_${1}

mkdir alpha_${1%.*}
qiime diversity alpha \
	--i-table d${2}_${1} \
	--p-metric shannon \
	--o-alpha-diversity alpha_${1%.*}/shannon.qza \

qiime diversity alpha \
	--i-table d${2}_${1} \
	--p-metric chao1 \
	--o-alpha-diversity alpha_${1%.*}/chao1.qza \

qiime diversity alpha \
        --i-table d${2}_${1} \
        --p-metric observed_otus \
        --o-alpha-diversity alpha_${1%.*}/otus.qza \

qiime diversity alpha \
        --i-table d${2}_${1} \
        --p-metric pielou_e \
        --o-alpha-diversity alpha_${1%.*}/pielou_e.qza \

cd alpha_${1%.*}
for file in *; do qiime tools export --input-path $file --output-path ${file%.*}_dir; done
