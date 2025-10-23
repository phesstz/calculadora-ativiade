algoritmo "Calculadora_Modular"
var
   num1, num2, resultado: real
   opcao: inteiro

funcao soma(a, b: real): real
inicio
   retorne a + b
fimfuncao

funcao subtracao(a, b: real): real
inicio
   retorne a - b
fimfuncao

funcao multiplicacao(a, b: real): real
inicio
   retorne a * b
fimfuncao

funcao divisao(a, b: real): real
inicio
   se b = 0 entao
      escreval("Erro: divisão por zero!")
      retorne 0
   senao
      retorne a / b
   fimse
fimfuncao

inicio
   repita
      escreval("------ CALCULADORA ------")
      escreval("1 - Soma")
      escreval("2 - Subtração")
      escreval("3 - Multiplicação")
      escreval("4 - Divisão")
      escreval("0 - Sair")
      escreva("Escolha uma opção: ")
      leia(opcao)

      se opcao <> 0 entao
         escreva("Digite o primeiro número: ")
         leia(num1)
         escreva("Digite o segundo número: ")
         leia(num2)

         escolha opcao
            caso 1
               resultado <- soma(num1, num2)
            caso 2
               resultado <- subtracao(num1, num2)
            caso 3
               resultado <- multiplicacao(num1, num2)
            caso 4
               resultado <- divisao(num1, num2)
            outrocaso
               escreval("Opção inválida!")
         fimescolha

         se (opcao >= 1) e (opcao <= 4) entao
            escreval("Resultado: ", resultado)
         fimse
      fimse

      escreval()
   ate opcao = 0

   escreval("Encerrando o programa...")
fimalgoritmo
