Algoritmo "MEDIA_COM_VETORES_E_PROCEDIMENTOS_E_FUNCOAS"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rubem Oliota
// Descri��o   : atribui��o de media com vetor e verdadeiro ou falso
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/06/2021
Var
   // Se��o de Declara��es das vari�veis
   nota:vetor [1..3] de real
   resultado:real
Inicio
   // capturar notas
   //-------------------------------------------------------------------------
procedimento capturar_notas()
var
   contador:inteiro
inicio
   para contador de 1 ate 3 fa�a
      escreval("Informe a ",contador, "� nota")
      leia(nota[contador])
   fimpara
fimprocedimento
//----------------------------------------------------------------------------
// calcular media
funcao calcular_media() : real
var
   contador:inteiro
   media,soma:real
inicio
   para contador de 1 ate 3 fa�a
      soma <- soma + nota[contador]
   fimpara
   retorne soma / 3
fimfuncao
//----------------------------------------------------------------------------
//exibir aprovado
funcao aprovado(media:real):logico
var
inicio
   se media>7 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

//----------------------------------INICIO--------------------------------------------

capturar_notas()
resultado <-calcular_media()
escreval("A media �  = ",resultado)
escreval ("A m�dia � = ", calcular_media())   // op��o que utiliza menos processamento
se aprovado(resultado) entao     //atribuicao de resultado vedadeiro com falso com funcao "aprovado"
   escreval ("aprovado")
senao
   escreval("reprovado")
fimse
Fimalgoritmo