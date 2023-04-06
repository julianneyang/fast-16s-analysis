# Shell Scripts for use with QIIME 

### Requirements 
- QIIME2-2019.10 and up 

### Usage 
Run as in any shell script, i.e. 
```shell
bash shellscript.sh
``` 
the first run is an `echo` command that will prompt for what inputs to utilize

### Details about each script

1. To make a taxa summary plot (stacked column chart showing taxonomy) 
  - Make a taxonomy.tsv file, which should contain the header `feature-id`, `taxonomy`, `confidence`. 
  - Import the taxonomy.tsv file with `import-taxonomy.sh`. 
  
