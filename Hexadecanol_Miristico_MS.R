library(readxl)

dadosMS<-read_xlsx(path = '/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 05 DCS Hexa_Miris/Hexadecanol_Miristico_MS.xlsx')

View(dadosMS)

x <- dadosMS$Mistura
y <- dadosMS$MA
z <- dadosMS$MS
h <- dadosMS$Wilson
h1 <- dadosMS$Artigo
h2 <- dadosMS$Planilha

plot(x, y, 
     xlim=c(0,1.02), 
     ylim=c(305,330),
     col='red', 
     main = 'Hexadecanol e Tetradecanol Artigo[20]',
     xlab='Mistura', 
     ylab='Temperatura(K)')
points(x, z, pch=2, col='dark blue')
points(x, h, pch=3, col='dark green')
points(x, h1, pch=4, col='cyan')
points(x, h2, pch=5, col='magenta')
legend(0.5,328,
       c('MA', 'MS', 'Wilson', 'Artigo[20]', 'Planilha'), 
       col=c('red', 'dark blue', 'dark green', 'cyan', 'magenta'), 
       pch=c(1,2,3,4,5))
grid()
