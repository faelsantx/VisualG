Algoritmo "Ex16"
Var
nome:caracter
n1,n2,n3,media: real
Inicio
escreval ("Digite o nome do aluno: ")
leia(nome)
escreval ("Digite a primeira nota: ")
leia(n1)
escreval ("Digite a segunda nota: ")
leia(n2)
escreval ("Digite a terceira nota: ")
leia(n3)
media <- (n1+n2+n3)/3
escreval (" ")
escreva ("A média do aluno foi:")
escreval (media)
se (media>=7) entao
escreval ("O aluno foi aprovado")
senao
se (media<5) entao
escreval ("O aluno foi reprovado")
senao
escreval ("O aluno está de recuperação")
fimse
fimse
Fimalgoritmo