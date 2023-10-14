programa {
  inclua biblioteca Tipos
  
  funcao inicio() {
    cadeia fila[3] = { "", "", "" }

    escreva("Entrando na fila")
    escreva("\n")
    para (inteiro i = 0; i < 3; i++) {
      const cadeia valor = Tipos.inteiro_para_cadeia(i + 1, 10)
      fila[i] = valor
      escreva(fila, "\n")
    }
    escreva("\n")
    escreva("Saindo da fila")
    escreva("\n")
    para (inteiro j = 0; j < 3; j++) {
      fila[j] = ""
      escreva(fila, "\n")
    }
  }
}
