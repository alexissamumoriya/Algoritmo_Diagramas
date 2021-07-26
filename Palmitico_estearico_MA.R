library(readxl)
library(latex2exp)

dadosMA <- read_xlsx(path = "/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 04 DSC Palmitico+estearico/Palmitico_estearico_MA.xlsx")

View(dadosMA)

x <- dadosMA$Mistura
y <- dadosMA$MA
z <- dadosMA$MS
h <- dadosMA$Wilson
h1 <- dadosMA$Artigo
#h2 <- dadosMA$Planilha

plot(x, y, 
     xlim=c(0,1.02), 
     ylim=c(162,417), 
     col='red', 
     #main = 'Palmitico e Esteárico DSC Mailhé 2020',
     xlab=TeX("Mistura $x_1$"),
     ylab='Temperatura(K)')
points(x, z, pch=2, col='dark blue')
points(x, h, pch=3, col='dark green')
points(x, h1, pch=4, col='cyan')
#points(x, h2, pch=5, col='magenta')
legend(0.5,300,
       c('MA','MS','Wilson', 'DSC Mailhé 2020'
         #, 'Planilha'
         ), 
       col=c('red', 'dark blue', 'dark green', 'cyan'
             #, 'magenta'
             ), 
       pch=c(1, 2, 3, 4
             #, 5
             ))
grid()

