library(readxl)
library(latex2exp)

excel_sheets(path = "/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 05 DCS Hexa_Miris/misturas_acidos.xlsx")
dadosMA <- read_xlsx(path = "/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 05 DCS Hexa_Miris/misturas_acidos.xlsx",
                     sheet = "Palmitico_Estearico")

#View(dadosMA)

x <- dadosMA$Mistura
y <- dadosMA$MA
z <- dadosMA$MS
h <- dadosMA$Wilson
h1 <- dadosMA$Artigo
#h2 <- dadosMA$Planilha

plot(x, y, 
     xlim=c(0,1.02), 
     ylim=c(322,343),
     col='red', 
     #main = 'Palmitico e Esteárico DSC Mailhé 2020',
     xlab=TeX("Mistura $x_1$"),
     ylab='Temperatura(K)')
points(x, z, pch=2, col='dark blue')
points(x, h, pch=3, col='dark green')
points(x, h1, pch=4, col='cyan')
#points(x, h2, pch=5, col='magenta')
legend(0.2,328,
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

