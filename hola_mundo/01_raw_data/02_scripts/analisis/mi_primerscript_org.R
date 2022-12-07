x <- rnorm(10000)

##########
pdf("03_salidas/plots/mi_fig_hist2.pdf")
hist(x, col = "red")
dev.off()
#########
#hay que correr todo esto en conjunto, 
#pa que no salga en ceros bytes el pdf

anotation <- read.csv("01_raw_data/proteins_167_161521.csv")
###
pdf("03_salidas/plots/mi_boxp.pdf")
boxplot(anotation$Length, pch = 21, add = F, col= "red")
dev.off()
###
#correr todo junto, pq si no no sale

pdf("03_salidas/plots/mi_boxp_sta_sto.pdf")
boxplot(anotation$Start)
dev.off()


median(anotation$Length)

#####TAREAAAAA#############
#hacer esto pero para los tamaños en nucleotidos####

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("BSgenome")
                   

######################################## 09 nov                                                                                                                                                                                                                                                        
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("msa")


library(msa)                                                                                                                                                                                                                                                                                                                                                                                                                                  


#datos precargados, msa tiene archivos fasta concatenados

missecuencias <- system.file("examples","exampleAA.fasta", package = "msa")
missecuencias
firstseq <- readAAStringSet(missecuencias) #aqui podemos poner nuestros archivos FASTA

#msa para hacer los alineamientos msa()

#por default usa clustalOMEGA

print(firstseq, show="alignment")

alineamiento1 <- msa (missecuencias, type = "protein")
alineamiento1


conMuscle <- msa(missecuencias, type = "protein", "Muscle")
conMuscle

help(msa)
#carga un archivo 


#se pueden generar arboles, mas bien es la principal razon paras hacer alinemaiento xdxd

##############################12/11/22

practicamsa <- system.file("~/Users/erikd/Desktop/GCF_000005845.2_ASM584v2_genomic.fna", package="msa")
import.fasta("~/Users/erikd/Desktop/virus.fa", aa.to.uppper = T)


practica <- readAAStringSet(practicamsa)

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")

library(Biostrings)

readDNAStringSet(fa_file, format= "fasta")


fa_file <- system.file(package="Biostrings", "extdata", "GCF_000005845.2_ASM584v2_genomic.fna")

readLines(fa_file)


orasi <- readDNAStringSet("/mnt/c//Users/erikd/Desktop/GCF_000005845.2_ASM584v2_genomic.fna", "fasta")


#####################

filepath1 <- system.file("extdata", "ecoli.fa", package= "Biostrings")
fasta.seqlengths(filepath1, seqtype = "DNA")




