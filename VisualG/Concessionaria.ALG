Algoritmo "Ex20"
Var
val,totalG,total: real
ano: inteiro
cont: caracter
Inicio
cont<- "sim"
enquanto (cont = "sim") faca
escreva("Digite o ano do carro: ")
leia(ano)
escreva("Digite o valor do carro: R$")
leia(val)
se (ano<=2000) entao
total<-total+1
totalG<-totalG+1
val <- val - (val*12)/100
escreva ("O valor com desconto é de: R$")
escreval(val)
senao
val <- val - (val*7)/100
totalG<-totalG+1
escreva ("O valor com desconto é de: R$")
escreval(val)
fimse
escreval ("Deseja continuar ? (sim/nao)")
leia(cont)
fimenquanto
escreval("O total de carros até o ano 2000 é: ",total)
escreval("O total de carros no geral é: ",totalG)
Fimalgoritmo