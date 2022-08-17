Algoritmo "Ex4"
Var
nome:caractere
fixo,salMes,vendas: real
Inicio
escreval("Digite o nome do vendedor: ")
leia(nome)
escreval("Digite seu salário fixo: ")
leia(fixo)
escreval("Digite o total de vendas em dinheiro: ")
leia(vendas)
salMes<- (vendas*15)/100
salMes<- fixo+salMes
escreva("O funciónario "+nome)
escreva(" , obteve o salário de: ")
escreval(salMes)
Fimalgoritmo