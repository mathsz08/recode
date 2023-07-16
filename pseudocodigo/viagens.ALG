
//----------------------------------- MENU ----------------------------------//

procedimento menu
var
   aux: inteiro
   rg: caractere
inicio
   enquanto verdadeiro faca
      escreval("------------------------")
      escreval("      ~~BEM VINDO~~     ")
      escreval("O que deseja? (Digite o número para selecionar)")
      escreval("1 - Cadastrar Cliente")
      escreval("2 - Vizualizar Cliente")
      escreval("3 - Cadastrar Viagem")
      escreval("4 - Vizualizar Viagens")
      escreval("0 - Sair")
      leia(aux)
      escolha aux
      caso 0
         interrompa
      caso 1
         cadastro_cliente
         menu
      caso 2
         escreval("------------------------")
         escreval("1 - Vizualizar todos os cliente:")
         escreval("2 - Vizualizar cliente especifico:")
         escreval("0 - Voltar")
         leia(aux)
         escolha aux
         caso 0
            menu
         caso 1
            vizu_clientes
         caso 2
            escreval("Digite o Rg do cliente: ")
            leia(rg)
            se nao vizu_cliente(rg) entao
               escreval("Cliente não encontrado")
            fimse
         fimescolha
      caso 3
           cadastro_viagem
      caso 4
           vizu_viagens
      outrocaso
         escreval("Favor inserir valor valido")
      fimescolha
   fimenquanto
fimprocedimento
//------------------------ VIZUALIZAÇÃO CLIENTE UNICO -----------------------//

funcao vizu_cliente (rg : caractere):logico
var
   i: inteiro
   aux: logico
inicio
   escreval("--------- VIZUALIZAÇÃO DE CLIENTE ---------")
   aux<- falso
   para i de 1 ate cliente faca
      se (nome[i,3] = rg ) entao
         escreval("------------------------")
         escreval("| NOME: ", nome[i,1])
         escreval("| EMAIL: ", nome[i,2])
         escreval("| RG; ", nome[i,3])
         escreval("| ENDEREÇO: ", nome[i,4])
         escreval("------------------------")
         aux <-verdadeiro
      fimse
   fimpara
   retorne aux
fimfuncao

//-------------------------- VIZUALIZAÇÃO CLIENTES --------------------------//
procedimento vizu_clientes
var
   i,j: inteiro
inicio
   escreval("--------- VIZUALIZAÇÃO DE CLIENTE ---------")

   para i de 1 ate cliente faca
      escreval("------------------------")
      escreval("| NOME: ", nome[i,1])
      escreval("| EMAIL: ", nome[i,2])
      escreval("| RG: ", nome[i,3])
      escreval("| ENDEREÇO: ", nome[i,4])
      escreval("------------------------")
   fimpara
fimprocedimento

//--------------------------- VIZUALIZAÇÃO VIAGENS --------------------------//
procedimento vizu_viagens
var
   i,j: inteiro
inicio
   escreval("--------- VIZUALIZAÇÃO DE VIAGEM ---------")

   para i de 1 ate viagem faca
      escreval("------------------------")
      escreval("| Destino: ", viagens[i,1])
      escreval("| RG Cliente: ", viagens[i,2])
      escreval("| Valor: ", viagens[i,3])
      escreval("------------------------")
   fimpara
fimprocedimento

//----------------------------- CADASTRO VIAGENS ----------------------------//
procedimento cadastro_viagem
var
   j: inteiro
inicio
   j<- 1
   viagem <- viagem +  1
   escreval("--------- CADASTRO DE VIAGEM ---------")
   escreval("Digite o Destino: ")
   leia(viagens[viagem,j])
   j <- j+1
   escreval("Digite o Rg do cliente: ")
   leia(viagens[viagem,j])
   j <- j+1
   escreval("Digite o Valor da viagem: ")
   leia(viagens[viagem,j])

fimprocedimento

//---------------------------- CADASTRO CLIENTES ----------------------------//

 procedimento cadastro_cliente
var
   j: inteiro
inicio
   j<- 1
   cliente <- cliente +  1
   escreval("--------- CADASTRO DE CLIENTE ---------")
   escreval("Digite o Nome: ")
   leia(nome[cliente,j])
   j <- j+1
   escreval("Digite o E-mail: ")
   leia(nome[cliente,j])
   j <- j+1
   escreval("Digite o RG: ")
   leia(nome[cliente,j])
   j <- j+1
   escreval("Digite o Endereço: ")
   leia(nome[cliente,j])

fimprocedimento



//------------------------------- ALGORITMO ---------------------------------//

Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Matheus Renato
// Data atual  : 14/07/2023
Var
   // Seção de Declarações das variáveis
   viagens: vetor[1..10,1..3] de caractere
   nome: vetor[1..10,1..5] de caractere
   cliente,viagem: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cliente <- 0
   viagem <- 0
   menu
Fimalgoritmo