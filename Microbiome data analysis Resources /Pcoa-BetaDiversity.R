library(ggplot2)

setwd("C:/Users/Jacobs Laboratory/Documents/JCYang/2022 PFF Microbiome/")

mytheme <- theme(panel.grid.minor=element_blank(), #gets rid of grey and lines in the middle
                 panel.grid.major=element_blank(), #gets rid of grey and lines in the middle
                 panel.background=element_rect(fill="white"),#gets rid of grey and lines in the middle
                 panel.border=element_blank(), #gets rid of square going around the entire graph
                 axis.line.x = element_line(colour = 'black', size = 0.5),#sets the axis line size
                 axis.line.y = element_line(colour = 'black', size = 0.5),#sets the axis line size
                 axis.ticks=element_line(colour = 'black', size = 0.5), #sets the tick lines
                 axis.title.x = element_text(size=16, color="black"), #size of x-axis title
                 axis.title.y = element_text(size=16, color="black"), #size of y-axis title
                 axis.text.x = element_text(size=12, color="black"), #size of x-axis text
                 axis.text.y = element_text(size=12, color="black"))#size of y-axis text
##PFF Colon Data
colondata <- read.csv("PFF RPCA - PFF_RPCA_Colon.csv", row.names=1)

cols <- c("WT" = "black", "HET" = "blue","MUT"="red")
ggplot(colondata, aes(x=PC1, y=PC2, colour=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Colon RPCA-colored by Genotype")

##PFF Whole Data
wholedata <- read.csv("PFF RPCA - PFF_RPCA_all.csv", row.names=1)

cols <- c("WT" = "black", "HET" = "blue","MUT"="red")
ggplot(wholedata, aes(x=PC1, y=PC2, colour=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Whole RPCA-colored by Genotype")

ggplot(wholedata, aes(x=PC1, y=PC2, colour=Sex, shape=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Genotype", values=c(16,10,15)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  #scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("Whole RPCA-colored by Genotype")


##PFF Cecum Data
Cecumdata <- read.csv("PFF RPCA - Cecum.csv", row.names=1)

cols <- c("WT" = "black", "HET" = "blue","MUT"="red")
ggplot(Cecumdata, aes(x=PC1, y=PC2, colour=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Cecum RPCA-colored by Genotype")

ggplot(Cecumdata, aes(x=PC1, y=PC2, colour=Sex, shape=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Genotype", values=c(16,10,15)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  #scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Cecum RPCA-colored by Genotype")

##PFF Jejunum Data
jejdata <- read.csv("PFF RPCA - PFF_RPCA_Jejunum.csv", row.names=1)

cols <- c("WT" = "black", "HET" = "blue","MUT"="red")
ggplot(jejdata, aes(x=PC1, y=PC2, colour=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
  scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Jejunum RPCA-colored by Genotype")

ggplot(jejdata, aes(x=PC1, y=PC2, colour=Sex, shape=Genotype)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  scale_shape_manual(name="Genotype", values=c(18,10,17)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  #scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Jejunum RPCA-colored by Genotype")

ggplot(colondata, aes(x=PC1, y=PC2, colour=Sex)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  
 # scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  #scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("PFF Colon RPCA-colored by Genotype")
  
ggplot(data, aes(x=PC1, y=PC2, colour=Sex)) + 
  mytheme + geom_point(size=3) + xlab("PC1 49.8%") + ylab("PC2 49.7%") +
  #scale_shape_manual(name="Sex", values=c(16,10)) +
  #stat_ellipse()+
  #geom_label(label=MouseID) +
  #  scale_fill_manual(name="Cre", values=cols) +
  #scale_colour_manual(name="Genotype", values=cols) +
  #geom_text(aes(label=MouseID, hjust=0.40, vjust=1.50)) +
  theme(legend.text = element_text(size = 09), legend.title = element_text(size= 9)) + 
  theme(axis.text = element_text(colour = "black", size="20")) +
  ggtitle("Cecum RPCA-colored by Sex")
