
library(ggplot2)
library(vegan)
set.seed(100)

###Adonis with RPCA of 0.25 Prev Filtered Data, stratified by Site within LuminalColon
setwd("C:/Users/Jacobs Laboratory/Documents/JCYang/2020 SLC Ten Total Trios/2021-4-Analysis (0.25 Prev Filtered)/LumCol_Stratified_RPCA/")

##Whole Data
data<-read.table(file ="DM_PFF_all/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
target <- row.names(data)
wholedata2 = wholedata[match(target, row.names(wholedata)),]
row.names(data) == row.names(wholedata2)

data.adonis= adonis(data.dist ~ Site + Sex + Genotype, data=wholedata2, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Site + Sex*Genotype, data=wholedata2, permutations=10000)
data.adonis

##Colon Data
data<-read.table(file ="DM_Colon/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
target <- row.names(data)
colondata2 = colondata[match(target, row.names(colondata)),]
row.names(data) == row.names(colondata2)

data.adonis= adonis(data.dist ~ Sex + Genotype, data=colondata2, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sex*Genotype, data=colondata2, permutations=10000)
data.adonis

##Jejunum Data
data<-read.table(file ="DM_Jejunum/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
target <- row.names(data)
jejdata2 = jejdata[match(target, row.names(jejdata)),]
row.names(data) == row.names(jejdata2)

data.adonis= adonis(data.dist ~ Sex + Genotype, data=jejdata2, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sex*Genotype, data=jejdata2, permutations=10000)
data.adonis

##Cecum Data
data<-read.table(file ="DM_Cecum/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
target <- row.names(data)
Cecumdata2 = Cecumdata[match(target, row.names(Cecumdata)),]
row.names(data) == row.names(Cecumdata2)

data.adonis= adonis(data.dist ~ Sex + Genotype, data=Cecumdata2, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sex*Genotype, data=Cecumdata2, permutations=10000)
data.adonis

#stratify Cecum Data by Sex 
femalececumdata<-subset(cecumdata, Sex=="Female")
data<-read.table(file="Cecum_SexStratify_DistanceMatrices/Female_Cecum_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(femalececumdata)
data.adonis= adonis(data.dist ~  Genotype, data=femalececumdata, permutations=10000)
data.adonis

malececumdata<-subset(cecumdata, Sex=="Male")
data<-read.table(file="Cecum_SexStratify_DistanceMatrices/Male_Cecum_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(malececumdata)
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Genotype, data=malececumdata, permutations=10000)
data.adonis

##Proximal Colon Data
metadata <- read.csv("Metadata - LuminalColon-SLC-metadata.csv", row.names = 1)
proxcolondata<- subset(metadata, Site=="Proximal_Colon")
#ensure that order of rows match each other
data<-read.table(file ="Distance_Matrices/ProximalColon_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(proxcolondata)
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Genotype, data=proxcolondata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex*Genotype, data=proxcolondata, permutations=10000)
data.adonis

##Distal Colon Data
metadata <- read.csv("Metadata - LuminalColon-SLC-metadata.csv", row.names = 1)
distcolondata<- subset(metadata, Site=="Distal_Colon")
#ensure that order of rows match each other
data<-read.table(file ="Distance_Matrices/DistalColon_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(distcolondata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Genotype, data=distcolondata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex*Genotype, data=distcolondata, permutations=10000)
data.adonis

##Female Luminalcol Data
metadata <- read.csv("Metadata - LuminalColon-SLC-metadata.csv", row.names = 1)
femalelumdata<- subset(metadata, Sex=="Female")
#ensure that order of rows match each other
data<-read.table(file ="Subsets/Distance_Matrices/Female_LumCol_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(femalelumdata)

data.adonis= adonis(data.dist ~Litter + Site + Genotype, data=femalelumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Litter + Site*Genotype, data=femalelumdata, permutations=10000)
data.adonis

##Nale LuminalCol Data
metadata <- read.csv("Metadata - LuminalColon-SLC-metadata.csv", row.names = 1)
malelumdata<- subset(metadata, Sex=="Male")
#ensure that order of rows match each other
data<-read.table(file ="Subsets/Distance_Matrices/Male_LumCol_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(malelumdata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site + Genotype, data=malelumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site*Genotype, data=malelumdata, permutations=10000)
data.adonis

##Whole LuminalSI Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/LuminalSI_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(metadata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Site + Genotype, data=metadata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site + Sex*Genotype, data=metadata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Site*Genotype, data=metadata, permutations=10000)
data.adonis

###Adonis with RPCA of 0.25 Prev Filtered Data, stratified by Site within LuminalSI
setwd("C:/Users/Jacobs Laboratory/Documents/JCYang/2020 SLC Ten Total Trios/2021-4-Analysis (0.25 Prev Filtered)/LumSI_Stratified_RPCA/")

##Duodenum Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
duodenumdata<- subset(metadata, Site=="Duodenum")
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/Duodenum_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(duodenumdata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Genotype, data=duodenumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex*Genotype, data=duodenumdata, permutations=10000)
data.adonis

##Jejunum Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
jejunumdata<- subset(metadata, Site=="Jejunum")
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/Jejunum_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(jejunumdata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Genotype, data=jejunumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex*Genotype, data=jejunumdata, permutations=10000)
data.adonis

##Ileum Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
ileumdata<- subset(metadata, Site=="Ileum")
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/Ileum_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(ileumdata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Genotype, data=ileumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex*Genotype, data=ileumdata, permutations=10000)
data.adonis

##Female LuminalSI Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
femalelumdata<- subset(metadata, Sex=="Female")
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/Female_LumSI_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(femalelumdata)

data.adonis= adonis(data.dist ~Litter + Site + Genotype, data=femalelumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Litter + Site*Genotype, data=femalelumdata, permutations=10000)
data.adonis

##Nale LuminalSI Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
malelumdata<- subset(metadata, Sex=="Male")
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/Male_LumSI_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(malelumdata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site + Genotype, data=malelumdata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site*Genotype, data=malelumdata, permutations=10000)
data.adonis

##Whole LuminalSI Data
metadata <- read.csv("2021 SLC Filtered Samples Metadata - LuminalSI-SLC-metadata.csv", row.names = 1)
#ensure that order of rows match each other
data<-read.table(file ="LuminalSI_Stratified/Subsets/Distance_Matrices/LuminalSI_DM/distance-matrix.tsv")
data.dist <- as.dist(as(data, "matrix"))
row.names(data) == row.names(metadata)

data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Site + Genotype, data=metadata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Site + Sex*Genotype, data=metadata, permutations=10000)
data.adonis
data.adonis= adonis(data.dist ~ Sequencing_Run + Litter + Sex + Site*Genotype, data=metadata, permutations=10000)
data.adonis
