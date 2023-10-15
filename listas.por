programa {
  inclua biblioteca Tipos
  
  funcao inicio() {
    //    Id do nó anterior| Id|   Valor do nó| Id do próximo nó
    cadeia vetor1[] = { "",  "0", "valor do 0", "1" }
    cadeia vetor2[] = { "0", "1", "valor do 1", "2"  }
    cadeia vetor3[] = { "1", "2", "valor do 2", "" }
    cadeia array[] = { vetor1, vetor2, vetor3 }
    
    escreva("Exemplo de uma lista ligada! \n")
    inteiro posicao = Tipos.cadeia_para_inteiro(vetor2[3], 10)
    const cadeia item3[] = { lista[posicao] }
    escreva("Item 3: \n", item3, "\n")

    posicao = Tipos.cadeia_para_inteiro(vetor1[3], 10)
    const cadeia item2[] = { lista[posicao] }
    escreva("Item 2: \n", item2, "\n")

    posicao = Tipos.cadeia_para_inteiro(vetor2[0], 10)
    const cadeia item1[] = { lista[posicao] }
    escreva("Item 1: \n", item1, "\n")
  }
}
