library(readxl)

# Puxando os dados de uma planilha
dadosMA <- read_xlsx(path = "/home/alex/Documentos/DEFESA/Planilha de cálculos/Sistema 05 DCS Hexa_Miris/Hexadecanol_Miristico_MA.xlsx")
# Visualização dos dados em uma janela.
View(dadosMA)

## Relação linear entre a variável dependente VD e independente VI
## VD é o quero prever Artigo
## VI o que tem influencia sobre a VD

y1 <- dadosMA$MA
y2 <- dadosMA$MS
y3 <- dadosMA$Wilson
x <- dadosMA$Artigo

## Construção do Modelo
mod1 <- lm(Artigo ~ MA, dadosMA)
mod2 <- lm(Artigo ~ MS, dadosMA)
mod3 <- lm(Artigo ~ Wilson, dadosMA)
## Análise gráfica
par(mfrow=c(2,2))
plot(mod1)

summary(mod1)

summary(mod2)

summary(mod3)

