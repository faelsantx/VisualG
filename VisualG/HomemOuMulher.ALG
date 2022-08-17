Algoritmo "Ex19"
var
nome, sexo: caractere
x, h, m: inteiro
inicio
para x de 1 ate 5 faca
escreva("Digite o nome: ")
leia(nome)
escreva("H - Homem ou M - Mulher: ")
leia(sexo)
escolha sexo
caso "H"
escreval(nome, " é homem!")
h <- h + 1
caso "M"
escreval(nome, " é mulher!")
m <- m + 1
outrocaso
escreval("Sexo só pode ser H ou M!")
fimescolha
fimpara
limpatela
escreval("Foram inseridos",h," Homens")
escreval("Foram inseridos",m," Mulheres")
fimalgoritmo
