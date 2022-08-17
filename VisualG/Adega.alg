algoritmo "provinhas"

var

vetNome: vetor [1..2] de caractere
vetVal: vetor [1..2] de real
vetEst: vetor [1..2] de inteiro
i,j,k,opcao,codigo, quant :inteiro
troco,totalI,totalV,din: real
cont,vender: caractere

inicio

cont <- "sim"
enquanto (cont = "sim") faca

escreval ("------------------------------ADEGA------------------------------")
escreval ("-----------------------------------------------------------------")
escreval ("| 1 - CADASTRO  |   2 - VENDAS   | 3 - RELATORIO  |  4 - SAIR   |")
escreval ("-----------------------------------------------------------------")
escreval ("OQUE DESEJA FAZER?")
leia (opcao)
escolha opcao

caso 1

escreval ("QUAIS PRODUTOS DESEJA CADASTRAR?")
para i de 1 ate 2 faca
escreval
escreva ("Digite o nome do produto: ")
leia (vetNome[i])
escreva ("Digite o valor do produto: R$")
leia (vetVal[i])
escreva ("A quantidade no estoque é: ")
leia (vetEst[i])
fimpara
escreval ("OS PRODUTOS FORAM CADASTRADOS COM SUCESSO ;)")
escreval
escreval ("DESEJA CONTINUAR O PROGRAMA? sim/nao")
leia (cont)
limpatela

caso 2

vender <- "sim"

escreval ("LISTA DE PRODUTOS")
para j de 1 ate 2 faca
escreval (j," - ",vetNome[j]," - ","R$",vetVal[j])
fimpara
escreval (" 0 - para voltar/ sair do programa")
enquanto (vender = "sim")faca
escreval ("OQUE DESEJA COMPRAR?")
leia (codigo)
se (codigo = 0) entao
vender <- "nao"
escreval
escreval ("DESEJA CONTINUAR A COMPRA? sim/nao")
leia (vender)
limpatela
senao
totalI <- totalI + 1
totalV <- totalV + vetVal[codigo]
escreva (vetNome[codigo])
escreval (" R$",vetVal[codigo])
escreval ("O valor da compra é de: R$", vetVal[codigo])
escreva ("Dinheiro recebido: ")
leia (din)
troco <- din - vetVal[codigo]
quant <- 0
quant <- quant + 1
vetEst[codigo] <- vetEst[codigo] - quant
escreval ("TROCO: R$",troco)
escreval
escreval ("O total das compras é de: R$",totalV)
escreval
escreval ("DESEJA COMPRAR MAIS?")
leia (vender)
escreval ("DESEJA CONTINUAR O PROGRAMA? sim/nao")
leia(cont)
fimse
fimenquanto

caso 3
escreval ("RELATORIO")
escreval
escreval ("DADOS APOS AS VENDAS:")

para k de 1 ate 2 faca
escreval (k," - ",vetNome[k]," Estoque: ",vetEst[k]," Vendidos : ",100 - vetEst[k])
fimpara

escreval ("Foram vendidos: ",totalI," produtos")
escreval ("O valor total das vendas é de: R$",totalV)
escreval
escreval ("DESEJA CONTINUAR O PROGRAMA? sim/nao")
leia (cont)
limpatela

caso 4

escreval ("DESEJA CONTINUAR O PROGRAMA? sim/nao")
leia (cont)
limpatela


fimescolha
fimenquanto
fimalgoritmo
