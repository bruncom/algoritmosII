Algoritmo "Vetores"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rubem Oliota
// Descrição   : conceitos de vetores com atribuições e funções
// Autor(a)    : Bruno Coelho de Mendonça
// Data atual  : 13/06/2021
Var
   // Seção de Declarações das variáveis

   alunos:vetor[1..4] de caractere
   notas:vetor[1..3] de real
   media,soma:real
   posicao:inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   //-------------------------------------------------------------------------------
procedimento capturar_nomes_alunos()
var
   contador:inteiro
inicio
   para contador de 1 ate 4 faça
      escreval("Informe o nome do ", contador, "° aluno")
      leia(alunos[contador])
   fimpara
fimprocedimento
//-------------------------------------------------------------------------------

funcao nome_aluno(indice:inteiro):caractere
var
   contador:inteiro
inicio
   retorne alunos [indice]
fimfuncao
//-----------------------------------------------------------------------------
procedimento listar_alunos()
var
   contador:inteiro
inicio
   escreval("===========INICIO ALUNOS==================")
   para contador de 1 ate 4 faça
      escreval(alunos[contador])
   fimpara
   escreval("================FIM ALUNOS=============")
fimprocedimento
//-------------------------------------------------------------------------------
procedimento atualizar_nome(indice:inteiro)
var
inicio
   escreval("No momento o valor salvo aqui é ", alunos[indice])
   escreval("Qual será o novo nome nessa prosição")
   leia(alunos[indice])
   listar_alunos()
fimprocedimento

//---------------------------------INICIO DE VERDADE-------------------------------
capturar_nomes_alunos()
escreval("-------------")
// exemplo de atribuição alunos[1] <- "fixo"
listar_alunos()
escreval("Escolha uma posição para atualizar o nome do aluno")
leia(posicao)
atualizar_nome(posicao)


Fimalgoritmo