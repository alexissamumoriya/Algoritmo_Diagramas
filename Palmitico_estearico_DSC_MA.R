library(readxl)

dadosMA <- read_xlsx(path = "/home/alex/Documentos/DEFESA/Planilha de cálculos/sistema 01 Palmitico+Estearico/Palmitico_estearico_MA.xlsx")

View(dadosMA)

x <- dadosMA$Mistura
y <- dadosMA$MA
z <- dadosMA$MS
h <- dadosMA$Wilson
h1 <- dadosMA$Artigo
#h2 <- dadosMA$Planilha

plot(x, y, 
     xlim=c(0,1.02), 
     ylim=c(321,344), 
     col='red', 
     #main = 'Palmitico e Esteárico Costa et al. 2009',
     xlab='Mistura x1', 
     ylab='Temperatura(K)')
points(x, z, pch=2, col='dark blue')
points(x, h, pch=3, col='dark green')
points(x, h1, pch=4, col='cyan')
#points(x, h2, pch=5, col='magenta')
legend(0.1,330,
       c('MA','MS','Wilson', 'Costa et al. 2009'
         #,'Planilha'
         ), 
       col=c('red', 'dark blue', 'dark green', 'cyan'
             #,'magenta'
             ), 
       pch=c(1, 2, 3, 4
             #, 5
             ))
grid()

