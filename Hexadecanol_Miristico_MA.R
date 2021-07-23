library(readxl)
library(latex2exp)

dadosMA <- read_xlsx(path = '/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 05 DCS Hexa_Miris/Hexadecanol_Miristico_MA.xlsx')

#View(dadosMA)

x <- dadosMA$Mistura
y <- dadosMA$MA
z <- dadosMA$MS
h <- dadosMA$Wilson
h1 <- dadosMA$Artigo
#h2 <- dadosMA$Planilha

plot(x, y, 
     xlim=c(0,1.02),
     ylim=c(300,330), 
     col='red', 
     #main = 'Hexadecanol e Miristico DSC Mailhé 2020',
     xlab=TeX('Mistura $x_1$'),
     ylab='Temperatura(K)')
points(x, z, pch=2, col='dark blue')
points(x, h, pch=3, col='dark green')
points(x, h1, pch=4, col='cyan')
#points(x, h2, pch=5, col='magenta')
legend(0.4,330,
       c('MA', 'MS', 'Wilson', 'DSC Mailhé 2020'), 
       col=c('red', 'dark blue', 'dark green', 'cyan'), 
       pch=c(1, 2, 3, 4))
grid()
