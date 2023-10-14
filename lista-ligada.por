programa {
  inclua biblioteca Tipos
  
  funcao inicio() {
    cadeia arr1[] = { "0", "valor do 0", "1" }
    cadeia arr2[] = { "1", "valor do 1", "2" }
    cadeia arr3[] = { "2", "valor do 2", "" }
    cadeia array[] = { arr1, arr2, arr3 }

    escreva("Exemplo de uma lista ligada! \n")
    inteiro pos = Tipos.cadeia_para_inteiro(arr2[2], 10)
    const cadeia item3[] = {array[pos]}
    escreva("Item 3: \n", item3, "\n")
    pos = Tipos.cadeia_para_inteiro(arr1[2], 10)
    const cadeia item2[] = {array[pos]}
    escreva("Item 2: \n", item2, "\n")
  }
}
