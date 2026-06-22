programa
{
    funcao inicio()
    {
        inteiro op = 0
        real ganhos = 0
        real gastos = 0
        real valor

        enquanto(op != 4)
        {
            escreva("\n===== MENU =====\n")
            escreva("1 - Registrar ganho\n")
            escreva("2 - Registrar gasto\n")
            escreva("3 - Consultar saldo\n")
            escreva("4 - Encerrar\n")
            leia(op)

            escolha(op)
            {
                caso 1:
                    escreva("Informe o ganho: ")
                    leia(valor)

                    se(valor <= 0)
                    {
                        escreva("Valor invalido\n")
                    }
                    senao
                    {
                        ganhos = ganhos + valor
                    }
                    pare

                caso 2:
                    escreva("Informe o gasto: ")
                    leia(valor)

                    se(valor <= 0)
                    {
                        escreva("Valor invalido\n")
                    }
                    senao
                    {
                        gastos = gastos + valor
                    }
                    pare

                caso 3:
                    real saldoAtual

                    saldoAtual = ganhos - gastos

                    escreva("\nGanhos acumulados: ", ganhos)
                    escreva("\nGastos acumulados: ", gastos)
                    escreva("\nSaldo atual: ", saldoAtual, "\n")

                    se(saldoAtual < 0)
                    {
                        escreva("Atencao: gastos maiores que os ganhos.\n")
                    }
                    senao
                    {
                        escreva("Situacao financeira positiva.\n")
                    }
                    pare

                caso 4:
                    escreva("Programa encerrado.\n")
                    pare

                caso contrario:
                    escreva("Opcao invalida!\n")
            }
        }
    }
}