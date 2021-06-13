Algoritmo "ProWay cursos"
// Disciplina   : [Linguagem e Lógica de Programação II]
// Professor   : Rubem Oliota
// Descrição   : Oferta de cursos da ProWay
// Autor(a)    : Bruno Coelho de Mendonça
// Data atual  : 13/06/2021
Var
   resposta_curso_contratado: caractere
   indice: inteiro
   cursos:vetor[1..5] de caractere
   detalhes:vetor[1..5] de caractere
   resumos:vetor[1..5] de caractere
   LIMITE:inteiro
   cursos_contratados:caractere
Inicio
   LIMITE<-5
   //-------------------------------------------------------------------------
   //inicializar cursos
procedimento inicializar_cursos()
var
inicio
   cursos[1] <- "Algoritmos 1"
   cursos[2] <- "Algoritmos 2"
   cursos[3] <- "Pyton - Fundamentos"
   cursos[4] <- "Pyton - Intermediário"
   cursos[5] <- "Pyton - Especialista"
fimprocedimento
//----------------------------------------------------------------------
//inicializar resumos
procedimento inicializar_resumos()
var
inicio
   resumos[1] <- "vai aprender a programar, vc n sabe ainda"
   resumos[2] <- "ja sei programar um pouco so falta uma linguagem de mercado"
   resumos[3] <- "o basico em uma linguagem de mercado"
   resumos[4] <- "fazendoprojetos no dia a dias"
   resumos[5] <- "sou p#0DA em programação me contrata"
fimprocedimento
//inicializar detalhes
//------------------------------------------------------------------------
procedimento inicializar_detalhes()
var
inicio
   detalhes[1] <- "variaveis,fluxogramas e exercicios"
   detalhes[2] <- "vetores, procedimentos, funcoes e banco de dados"
   detalhes[3] <- "o basico da linguagem, variaveis, e exercicios"
   detalhes[4] <- "funcoes e mini projetos"
   detalhes[5] <- "mega projeto com foco em um emprego"
fimprocedimento
//listar cursos
//------------------------------------------------------------------------
procedimento listar_cursos() //assim utilizamos um procedimento de lista personalizavel
var
   contador : inteiro
inicio
   inicializar_cursos()
   inicializar_resumos()
   inicializar_detalhes()
   para contador de 1 ate LIMITE faça
      escreval(contador , "- curso ",cursos[contador])
   fimpara
fimprocedimento
//----------------------------------------------------------------------
//selecionar um curso - exibir os detalhes - exibir uma revisão
funcao curso_selecionado(indice : inteiro) : caractere
var
inicio
   escreval("------------------------- ", cursos[indice],"--------------------------------")
   escreval ("- ",detalhes[indice])
   escreval ("Resumo do curso")
   escreval ("- ",resumos[indice])
   escreval("---------------------------------------------------------")
   escreval("")
   escreval("")
   retorne contratar_curso(indice)
fimfuncao
//----------------------------------------------------------------------
//opção de contratar esse curso
funcao contratar_curso(indice:inteiro) : caractere
var
   resposta:caractere
inicio
   escreval ("Deseja contratar o curso ", cursos[indice] ,"? (S/N)")
   leia (resposta)
   se (resposta="s") ou (resposta="S") ou (resposta="sim") entao // as condições tem que ser separadas por parenteses uma por uma
      cursos_contratados <- cursos_contratados +","+cursos[indice]
      retorne "Contratou o curso"
   senao
      retorne "Não contratou o curso"
   fimse
fimfuncao
//-----------------------------------------------------------------------
//loop de apesentcao para o usuario
procedimento loop_apresentacao()
var
inicio
   limpatela
   listar_cursos()

   escreval ("Conforme a lista de cursos, escolha o curso pretendido")
   escreval ("ESCOLHA -1 para sair do programa")
   escreval ("no momento voce ja tem o cusos")
   escreval (cursos_contratados)
   leia(indice)
   se (indice <1) ou (indice>LIMITE) entao
      escreval ("Escolha um indice válido")
   senao
      resposta_curso_contratado <- curso_selecionado(indice)
      escreval (resposta_curso_contratado)
   fimse

fimprocedimento
//-----------------------------INICIO DE VERDADE---------------------------

escreval("Bem vindo ao catalogo de cursos da ProWay")

repita
   loop_apresentacao()
ate (indice=-1)
Fimalgoritmo