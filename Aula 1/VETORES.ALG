Algoritmo "Vetores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rubem Oliota
// Descri��o   : conceitos de vetores com atribui��es e fun��es
// Autor(a)    : Bruno Coelho de Mendon�a
// Data atual  : 13/06/2021
Var
   // Se��o de Declara��es das vari�veis

   alunos:vetor[1..4] de caractere
   notas:vetor[1..3] de real
   media,soma:real
   posicao:inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   //-------------------------------------------------------------------------------
procedimento capturar_nomes_alunos()
var
   contador:inteiro
inicio
   para contador de 1 ate 4 fa�a
      escreval("Informe o nome do ", contador, "� aluno")
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
   para contador de 1 ate 4 fa�a
      escreval(alunos[contador])
   fimpara
   escreval("================FIM ALUNOS=============")
fimprocedimento
//-------------------------------------------------------------------------------
procedimento atualizar_nome(indice:inteiro)
var
inicio
   escreval("No momento o valor salvo aqui � ", alunos[indice])
   escreval("Qual ser� o novo nome nessa prosi��o")
   leia(alunos[indice])
   listar_alunos()
fimprocedimento

//---------------------------------INICIO DE VERDADE-------------------------------
capturar_nomes_alunos()
escreval("-------------")
// exemplo de atribui��o alunos[1] <- "fixo"
listar_alunos()
escreval("Escolha uma posi��o para atualizar o nome do aluno")
leia(posicao)
atualizar_nome(posicao)


Fimalgoritmo