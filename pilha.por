programa {
  inclua biblioteca Tipos
  
  funcao inicio() {
    cadeia pilha[3] = { "", "", "" }

    escreva("Entrando na pilha")
    escreva("\n")
    para (inteiro i = 0; i < 3; i++) {
      const cadeia valor = Tipos.inteiro_para_cadeia(i + 1, 10)
      pilha[i] = valor
      escreva(pilha, "\n")
    }
    escreva("\n")
    escreva("Saindo da pilha")
    escreva("\n")
    para (inteiro j = 2; j >= 0; j--) {
      pilha[j] = ""
      escreva(pilha, "\n")
    }
  }
}
