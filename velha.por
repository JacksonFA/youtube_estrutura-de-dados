programa {
  logico x_ganhou, o_ganhou, fim_de_jogo, deu_velha = falso
  cadeia ganhador
  caracter velha[][] = {{' ',' ',' '}  
                       ,{' ',' ',' '}  
                       ,{' ',' ',' '}}

  funcao inicio() {
    escreva("JOGO DA VELHA!")
    escreva("\n")
    escreva("Escolha sempre as linhas e colunas com números de 0 a 2")
    escreva("\n")
    escreva("Exemplo: Para marcar a primeira área, digite 0 para linha e 0 para coluna")
    escreva("\n")
    escreva("\n")
    escreva("\n")

    enquanto (fim_de_jogo != verdadeiro) {
      x_ganhou = vez_jogadorX()
      se (x_ganhou == verdadeiro) {
        fim_de_jogo = verdadeiro
        escreva("O jogador X foi o vencedor!!!")
        pare
      }

      se (deu_velha == verdadeiro) {
        fim_de_jogo = verdadeiro
        escreva("Deu velha!!!")
        pare
      }

      o_ganhou = vez_jogadorO()
      se (o_ganhou == verdadeiro) {
        fim_de_jogo = verdadeiro
        escreva("O jogador O foi o vencedor!!!")
      }

      se (deu_velha == verdadeiro) {
        fim_de_jogo = verdadeiro
        escreva("Deu velha!!!")
      }
    }
  }

  funcao mostrar_velha() {
    logico total_preenchida = verdadeiro
    escreva("\n")
    para (inteiro i = 0; i < 3; i++) {
      para (inteiro j = 0; j < 3; j++) {
        escreva(velha[i][j])
        se (j < 2) {
          escreva(" | ")
        }
        se (velha[i][j] == ' ') {
          total_preenchida = falso
        }
      }
      se (i < 2) {
        escreva("\n")
        escreva("--|---|---")
        escreva("\n")
      }
    }
    escreva("\n")
    escreva("\n")
    se (total_preenchida == verdadeiro) {
      deu_velha = verdadeiro
    }
  }

  // JOGADOR X
  funcao logico vez_jogadorX() {
    logico x_jogou

    escreva("Vez do jogador X! \n")

    faca {
      x_jogou = jogadaX()
    } enquanto (x_jogou == falso)

    limpa()
    mostrar_velha()
    retorne verificar_velha_x()
  }

  funcao logico jogadaX() {
    inteiro jogada_linha, jogada_coluna   

    escreva("linha: ")
    leia(jogada_linha)
    escreva("coluna: ")
    leia(jogada_coluna)

    se (velha[jogada_linha][jogada_coluna] == ' ') {
      velha[jogada_linha][jogada_coluna] = 'X'
      retorne verdadeiro
    } senao {
      escreva("Essa posição já está ocupada, escolha uma diferente! \n")
      retorne falso
    }
  }

  funcao logico verificar_velha_x() {
    // Linhas
    logico jogadasX1 = velha[0][0] == 'X' e velha[0][1] == 'X' e  velha[0][2] == 'X'
    logico jogadasX2 = velha[1][0] == 'X' e velha[1][1] == 'X' e  velha[1][2] == 'X'
    logico jogadasX3 = velha[2][0] == 'X' e velha[2][1] == 'X' e  velha[2][2] == 'X'

    // Diagonais
    logico jogadasX4 = velha[0][0] == 'X' e velha[1][1] == 'X' e  velha[2][2] == 'X'
    logico jogadasX5 = velha[0][2] == 'X' e velha[1][1] == 'X' e  velha[2][0] == 'X'

    // Colunas
    logico jogadasX6 = velha[0][0] == 'X' e velha[1][0] == 'X' e  velha[2][0] == 'X'
    logico jogadasX7 = velha[0][1] == 'X' e velha[1][1] == 'X' e  velha[2][1] == 'X'
    logico jogadasX8 = velha[0][2] == 'X' e velha[1][2] == 'X' e  velha[2][2] == 'X'

    const logico ganhou_x = jogadasX1 ou jogadasX2 ou jogadasX3 ou jogadasX4 ou jogadasX5 ou jogadasX6 ou jogadasX7 ou jogadasX8
    retorne ganhou_x
  }

  // JOGADOR O
  funcao logico vez_jogadorO() {
    logico o_jogou

    escreva("Vez do jogador O! \n")

    faca {
      o_jogou = jogadaO()
    } enquanto (o_jogou == falso)

    limpa()
    mostrar_velha()
    retorne verificar_velha_o()
  }

  funcao logico jogadaO() {
    inteiro jogada_linha, jogada_coluna

    escreva("linha: ")
    leia(jogada_linha)
    escreva("coluna: ")
    leia(jogada_coluna)

    se (velha[jogada_linha][jogada_coluna] == ' ') {
      velha[jogada_linha][jogada_coluna] = 'O'
      retorne verdadeiro
    } senao {
      escreva("Essa posição já está ocupada, escolha uma diferente! \n")
      retorne falso
    }
  }

  funcao logico verificar_velha_o() {
    // Linhas
    logico jogadasO1 = velha[0][0] == 'O' e velha[0][1] == 'O' e  velha[0][2] == 'O'
    logico jogadasO2 = velha[1][0] == 'O' e velha[1][1] == 'O' e  velha[1][2] == 'O'
    logico jogadasO3 = velha[2][0] == 'O' e velha[2][1] == 'O' e  velha[2][2] == 'O'

    // Diagonais
    logico jogadasO4 = velha[0][0] == 'O' e velha[1][1] == 'O' e  velha[2][2] == 'O'
    logico jogadasO5 = velha[0][2] == 'O' e velha[1][1] == 'O' e  velha[2][0] == 'O'

    // Colunas
    logico jogadasO6 = velha[0][0] == 'O' e velha[1][0] == 'O' e  velha[2][0] == 'O'
    logico jogadasO7 = velha[0][1] == 'O' e velha[1][1] == 'O' e  velha[2][1] == 'O'
    logico jogadasO8 = velha[0][2] == 'O' e velha[1][2] == 'O' e  velha[2][2] == 'O'

    const logico ganhou_o = jogadasO1 ou jogadasO2 ou jogadasO3 ou jogadasO4 ou jogadasO5 ou jogadasO6 ou jogadasO7 ou jogadasO8
    retorne ganhou_o
  }
}
