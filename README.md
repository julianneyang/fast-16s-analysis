# Shell Scripts for use with QIIME 
These are just very simple shell scripts that wrap the QIIME commands developed by Rob Knights's group. They primarily save time on typing but are particularly helpful in the case of having many datasets, where you can utilize looping, for example:
```bash
cd folder/with/files
for file in *; do bash shellscript.sh $file; done
```

### Requirements 
- QIIME2-2019.10 and up 

### Usage 
Run as in any shell script, i.e. 
```shell
bash shellscript.sh
``` 
the first run is an `echo` command that will prompt for what inputs to utilize

### Details about each script

0. To start, import your features x samples .tsv file. and convert to .qza. Note, this .tsv should not have a "taxonomy" column at the end.
```bash
bash ../../../fast-16s-analysis/shell_scripts/1-qiime-tools-import.sh Trios_ASV_table_Silva_v138_1.tsv 
```

1. To make a taxa summary plot (stacked column chart showing taxonomy) 
  - Make a taxonomy.tsv file, which should contain the header `Feature ID`, `Taxon`
  ![image](https://user-images.githubusercontent.com/62775127/230488576-79046180-839c-44d8-a2a5-48f26ec52d1d.png)
  - Import the taxonomy.tsv file with `import-taxonomy.sh`. 
```bash
bash ../../../fast-16s-analysis/shell_scripts/import-taxonomy.sh final_taxonomy.tsv 
Imported final_taxonomy.tsv as TSVTaxonomyDirectoryFormat to taxonomy.qza
``` 
  - At this point, if you wish, you can average observations across samples according to sample metadata using `groupsamples.sh`.   
```bash
  bash ../../../fast-16s-analysis/shell_scripts/groupsamples.sh Luminal_Colon_notax_Trios_ASV_table_Silva_v138_1.qza SLC_TOTAL_OCT2020_FULL_Metadata.tsv Genotype taxonomy.qza 
```
  - If you grouped your observations, you will need to make a "metadata" .tsv file that denotes the levels of the factor by which you grouped your samples. 
  Since I grouped by "Genotype" above, I will now make a "metadata" file that contains a single column: 
#SampleID
WT
HET
MUT
  - Now, I can use `taxa-barplots.sh` to make my barplots.
```bash
bash ../../../fast-16s-analysis/shell_scripts/taxabarplot.sh groupby_Genotype_Luminal_Colon_notax_Trios_ASV_table_Silva_v138_1.qza taxonomy.qza Genotype_Metadata.tsv 
```


