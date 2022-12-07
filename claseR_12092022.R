x <- c(35,35,70,17,14)
print(x)
x
nombres <- c("jerry", "beth", "rick", "summer", "morty")
names(x) <- nombres

x
any(x>75) #true or false de que hay obj con nvalor mayor a 75
any(x>12)
mean(x[-2]) #saca prmedio pero sin beth que es la 2


y<- sort(x[- length (edades)]decreasing = T)



any(x > 12 & x<20)

#asignar nombres para saber el tamaño del genoma, de un vector


mifila <- c(20.5,19.9,21.4,20.3,22.91, 22.5)
amigus <- c("Errik","Vale", "Abi", "May", "Andy ", "Valeib" )

f <- names(mifila) <- amigus
mifila

#mínimo,máximo, media, mediana, la desviación estándar, la longitud del vector y selecciona sólo los elementos impares.

min(amigus)

max(amigus)

median(mifila)

sd(mifila)

range(mifila)
#---------------









#Crea un vector de caracteres con diez nombres de especies
#y asocialo con su número de acceso de NCBI para su genoma en nucleótidos.


anim <- c("suricata", "salmonella", "listeria mono", "e coli", "sars cov", "medusa", "pez payaso", "homo sapiens", "rinoceronte","oso pardo")

anim

sppp <- c(043717.1, )






##########################

#lidiar con NAs

#por no encontrar algo

#NA puede ser parte de un vector

is.na(x) #determinamos si existe NA o no, 

mean(x,na.rm = T) #pa eliminar NA, pq si no se patatea



which()#nos regresa las psiciones de kines si cumplen la caracteristica, 


z[which(z*z > 8)]


all(x==y) #pa ver si todos los valores son iguales

#va a regresar valores de TRUE, y como l suma es de 10000, todos los valores son TRUE y se suman
#10000 T, si da menos es pq hay un valor que no encaja




#####FACTORES########

#NUMERO REPETIDOS DE VARIABLES
#factores es una forma sencilla




#TABLE

#mos va a regresar el vector de meses que cumplimos años


#levels(meses)[1] selecciona del vector de meses, el primero


virus <- c("Phage T4", "SARS", "Influenza A", "SARS Cov 2", "marburgvirus", "Dengue", "Morbillivirus", "MERS", "Zika", "Phage T6")
ncvirus <- c(000866.4, 004718.3, 007373.1, 045512.2, 001608.3, 001474.2, 001498.1, 019843.3, 012532.1, 054907)


names(virus) <- ncvirus
virus

length(virus)

pbvir <- c(168903, 29751, 2341, 29903, 19111, 10723, 15894, 30119, 10794, 168697)
virus1 <- c("Phage T4", "SARS", "Influenza A", "SARS Cov 2", "marburgvirus", "Dengue", "Morbillivirus", "MERS", "Zika", "Phage T6")

names(pbvir) <- virus1
pbvir



#mATRIZ no se deben de mezclar los ntipos de datos

y <- matrtix(c(1,5,8,-4), nrow=2, ncol=2) #nos na una matrix de 2x2

byrow=T #pa indicar que llene por rengloines y no col

#%*% para indicar multiplicacion de matrices

#hace el podructo elemento elemneto

#hace la matrix como deberian ahcerse

#sintraxis de los dos puntitos : selecciona valores [renglon, columna]




#rownamnes, colnames

#letters[1:3]
#LETTERS[1:8] mayuscuas en orden alfabetico







#Bioconductor repositorio de paquetes de R, saber como descargas desde CRAN

#Saber como descargar desde bioconductor


if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(version = "3.15")

?repositories

BiocManager::install("Biostrings")



##############################################33
mes <- "diciembre"  #minuscula
dia <- 13

if(mes=="enero" & dia>=1){
  print("Eres de invierno")
}else if (mes=="febrero" & dia>=1){
  print("Eres de invierno")
}else if (mes=="marzo" & dia<=20){
  print("Eres de invierno")
}else if (mes=="marzo" & dia>=20){
  print("Eres de primavera")
}else if (mes=="abril" & dia>=1){
  print("Eres de primavera")
}else if (mes=="mayo" & dia>=1){
  print("Eres de primavera")
}else if (mes=="junio" & dia<=20){
  print("Eres de primavera")
}else if (mes=="junio" & dia>=20){
  print("Eres de verano")
}else if (mes=="julio" & dia>=1){
  print("Eres de verano")
}else if (mes=="septiembre" & dia<=22){
  print("Eres de verano")
}else if (mes=="septiembre" & dia>=23){
  print("Eres de fall")
}else if (mes=="octubre" & dia>=1){
  print("Eres de fall")
}else if (mes=="noviembre" & dia>=1){
  print("Eres de fall")
}else if (mes=="diciembre" & dia<=19){
  print("Eres de fall")
}else if (mes=="diciembre" & dia>=20){
  print("Eres de invierno")
}else{
  print("no has nacido")
}


#######################07/12/2022
#DD,MM,AAAA

BiocManager::install("ggmsa")
library(ggmsa)
BiocManager::install("ggtree", force = T)
library(ggtree)
