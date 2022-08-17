algoritmo "jogodaforca"

{algoritmo feito para montar um jogo da velha, utilizando comandos
apresentados pelo professor.}

var
vetpalavra: vetor [1..10] de caracter        //
vetmostrar: vetor [1..10] de caracter        //Aqui foi setado
i,j,k,l,c, m,n , contador: inteiro           //as variaveis do cmd.
letra, palavrainteira, teste, fim:caractere  //
inicio
para i de 1 ate 10 faca    //Esse "para" foi usado para soletrar a palavra que voce que a pessoa adivinhe
   escreval("Digite a", i, " letra:")
   leia(vetpalavra[i])    //Pedindo para digitar a letra
fimpara

limpatela //Aqui a tela sera limpada para dar continuidade ao algoritmo

para c de 1 ate 10 faca   //Esse "para" é usado para mostrar os simbolos que
   vetmostrar[c]<- "-"   //serão trocados por letras futuramente.
fimpara

para n de 1 ate 10 faca   //Esse "para" foi usado para somar as letras digitadas, e formar a palavra final,a palavra que sera adivinhada
   palavrainteira<-palavrainteira + vetpalavra[n]
fimpara

escreval(palavrainteira)  //Essa é palavra inserida pela pessoa

escreval("------------------JOGO-----------------")

fim<-"jogue" //aqui, o fim esta recebendo o "jogue", o resto do codigo só  vai funcionar se o fim estiver recebendo "jogue".
contador<-15 //o "contador" esta recebendo 15, que mostra a quantidade de chances que o jogador tem.
para j de 1 ate 15 faca  //O "para" ate 15 mostra quantas vezes o jogador pode jogar
   se fim = "jogue" entao // se "fim" estiver recebendo "jogue", o codigo dara continuidade.

      escreval("Digite uma letra") //Aqui esta pedindo para o usuario digitar uma letra
      leia(letra)
      escreval("você tem" , contador,  " chances para acertar")
      contador<-contador-1 //A cada jogada, voce tem -1 chance
      para k de 1 ate 10 faca //Este "para" vai comparar as letras selecionadas no começo o comigo, com as letras digitadas para a adivinhação da palavra.
         se vetpalavra[k] = letra entao //
            vetmostrar[k]<- letra       // Aqui acontecerá a troca do "-" pela letra, caso a letra escolhida esteja na palavra
            teste<-""                   //
            para m de 1 ate 10 faca  // Esse "para" é para colocar as letras no lugar certo, em sua devida ordem
               teste<-teste + vetmostrar[m]
            fimpara

            se palavrainteira = teste entao //
               fim<-" - ganhou"             //Aqui tem uma comparação: se  a palavra digitada letra por letra
            fimse                           //for igual a palavra selecionada no começo do código, entao o sistema
         fimse                              //vai mostrar que o jogador ganhou.

      fimpara
      para l de 1 ate 10 faca     //
         escreva(vetmostrar[l])   //
      fimpara                     // Esse "para" esta mostrando o vetor mostrar como ele ficou depois da troca dos simbolos pela letra, para o jogador saber
   senao                          // se a letra escolhida esta correta ou errada
   fimse                          //


fimpara  // Este é o fim do primeiro para.

se palavrainteira <> teste entao //
   escreval(" - Perdeu")         // Se a palavra digitada letra por letra da palavra feita no começo,
senao                            // o sistema vai mostrar que o jogador perdeu.
   escreval(fim)                 // (APÓS AS 15 CHANCES QUE O JOGADOR TEM ELE NÃO CONSEGUIR ADIVINHAR A PALAVRA,
fimse                            // ESSA MENSAGEM TAMBEM APARECERÁ)
fimalgoritmo  // Aqui é o fim do comando.
