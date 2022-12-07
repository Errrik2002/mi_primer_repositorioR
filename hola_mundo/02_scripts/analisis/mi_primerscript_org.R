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

library("msa")


0.05*0.5*0.2*0.6

nclim <- c("sol","nub","rain")
clima <- matrix(c(0.8,0.2,0.2,0.15,0.2,0.5,0.05,0.6,0.3), nrow=3)

clima


colnames(clima) <- nclim
rownames(clima) <- nclim


jvsdl <- (clima["sol","rain"])*(clima["rain","nub"])*(clima["nub","nub"])*(clima["nub","sol"])
jvsdl




############funciones por los usuarios

#mi_funcion <- function(){#cuerpo de la funcion}
  
  mi_funcion <- function(ekiz){
    return(ekiz^2 + ekiz+ 1)
  }
mi_funcion(-2)


x <- c(5,-2,-3,4)
y
x
#si se hace un vector numerico y se introduce en la funcion

#la funcion hace la operaqcion para todos los objetos del vector
mi_funcion(-x)  


y <- mi_funcion(x)  
y  

############funcion para que me sume dos vectores

sumvec <- function(vec1,vec2){
  return(vec1 + vec2)
}

sumvec(x,y)

x
long(x)

x[3]
  
#funcionj que saque la media de un vector

promedio <- function(vecprom){
 return(vecprom[1]+vecprom[2]+vecprom[3]+vecprom[4])/ length(vecprom)
}
promedio(x)



#una funcion quye tenga una matrtiz de transiciojn y dos estados
#y mida los dos estados la probabilidad de pasar


traset <- matrix(c(0.8,0.2,0.2,0.8),nrow=2)
colnames(traset) <- nomcli
row.names(traset) <- colnames(traset)

nomcli <- c("soleado","nublado")
traset


estados <- function(matriz){
  (matriz["soleado","soleado"])
  }
estados(traset)  
  
##########################3

state <- function(matriz, x, z){
  return(matriz[x,z])
}
state(traset, "soleado","nublado")  
 #me saca el valor de mi matriz



##########

saludos <- function(){
nombre <- readline(prompt="Ingresa tu nombre : ")
numero_fav <- readline(prompt = "Cual es tu numero favorito? ") 
numero_fav <- as.numeric(numero_fav)

if(numero_fav==8){
return(print(paste("Hola", nombre, "tu numero favorito es: ", numero_fav, ", ocho pinocho, un chascarrillo")))
}else{
return(print(paste("Hola", nombre, "tu numero favorito es: ", numero_fav)))
}
  }
saludos()




#######sacar el valor respewcto a las entradas que se digan tipo lo del nombre y num fav





############16 de nov del 22#############


chicharronera <- function(a,b,c){

discriminant <- (b^2)-(4*c*a)
part <- sqrt(discriminant)


if(discriminant<0){
  print("no se puede, no hay solucion real")
}else if (part>0){
  neg <- ((-b)+part)/(2*a)
  plus <- ((-b)-part)/(2*a)
  
  print(neg)
  print(plus)
  print("X2 y X2 respectivamente")
}else if (discriminant==0){
  una <- (-b)/(2*a)
  print(una)
  print("solo hay una solucion pq el discriminante es cero")
}else{
  print("nose")
}
}
chicharronera(1,-14,48)






