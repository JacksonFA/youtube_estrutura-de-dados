programa {
  inclua biblioteca Util
  
  funcao inicio() {
    caracter array1[] = { 'A', 'B' }
    cadeia array2[] = { "abc", "def" }
    inteiro array3[] = { 1, 2 }
    real array4[] = { 3.5, 4.5 }
    logico array5[] = { verdadeiro, falso }

    cadeia array[] = { array1, array2, array3, array4, array5 }
    const inteiro tamanho_array = Util.numero_elementos(array)

    escreva("Tamanho do array: ", tamanho_array)
    escreva("\n")
    para (inteiro i = 0; i < tamanho_array; i++) {
      escreva("Posição ", i, ": ", array[i])
      escreva("\n")
    }
  }
}
