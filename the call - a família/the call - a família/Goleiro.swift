import Foundation

// Função com a história do goleiro
func goleiro(valor: Int) {
    switch valor {
    
        // Toma uma bolada
        case 1:
            printImagem(i: foto10Bola)
            typewriterPrint("Joãozinho estava no gol, concentrado, quando, de repente, um chute forte disparou em direção ao seu rosto. Ele tentou se posicionar, mas não teve tempo de reagir... A bolada acertou em cheio seu nariz, que imediatamente começou a sangrar. Ele caiu no chão, tonto e com dor, enquanto o jogo seguia. A partida já não parecia mais tão importante... o nariz quebrado era o novo protagonista da história! No fim, Joãozinho aprendeu da pior forma que, no futebol, assim como na vida, é sempre bom estar preparado para qualquer impacto.")
            
        // Faz a defesa
        case 2:
            printImagem(i: foto9Goleiro)
            if rec == false {
                typewriterPrint("Joãozinho fez uma defesa espetacular e, com o jogo finalmente terminado, começou a caminhar de volta para casa, cansado, mas com a sensação de dever cumprido. Quando chegou em casa, ele, exausto após o jogo, caiu na cama e, sem pensar duas vezes, dormiu como um anjo. O problema é que o sono foi tão profundo que ele acabou esquecendo completamente da prova. Resultado: ficou de recuperação!")
                rec = true
                textoIntrodutorio()
                looping()
            } else {
                typewriterPrint("Joãozinho fez uma defesa espetacular e, com o jogo finalmente terminado, começou a caminhar de volta para casa, cansado, mas com a sensação de dever cumprido. Ele chegou em casa exausto e foi direto para a cama e, sem pensar duas vezes, se entregou ao sono. Esqueceu completamente da prova de recuperação que teria no dia seguinte. O problema é que, ao acordar, o pesadelo se concretizou: ele não tinha estudado nada e, como resultado, não conseguiu a nota necessária. Reprovou!")
                printImagem(i: foto5Triste)
                typewriterPrint("Para piorar, sua mãe, Dona Virgínia, não teve piedade. Como punição, além de perder a tão aguardada viagem para o interior do Amazonas, ele também teve que devolver o videogame novinho que seus pais haviam lhe dado. A moral da história? Pode até ser divertido jogar bola, mas estudar, meu amigo, é o jogo que realmente vale a pena ganhar!")
            }
                    
        // Vira uma lenda urbana
        case 3:
            printImagem(i: foto9Goleiro)
            typewriterPrint("Joãozinho fez a defesa do século! Com um salto preciso e uma mão salvadora, espalmou a bola no ângulo, arrancando gritos de espanto e aplausos de todos no campinho. A jogada foi tão espetacular que alguém gravou e postou na internet. Em poucas horas, o vídeo viralizou, chegando até olheiros de clubes por todo o continente. Agora, Joãozinho não era apenas o goleiro do bairro... ele era uma sensação!")
            printImagem(i: foto11Aviao)
            typewriterPrint("Na tão esperada viagem para encontrar um dos olheiros, tudo ia bem… até que não foi. Uma turbulência violenta, alarmes disparando, gritos de desespero, e então, o pior aconteceu... o avião caiu... O destino de Joãozinho, que antes parecia ser o estrelato no futebol, mudou drasticamente. Agora, ele virou lenda, mas não do jeito que imaginava. Seu trágico fim virou argumento oficial de todas as mães do país: Tá vendo o Joãozinho? Escolheu jogar bola em vez de estudar e olha no que deu! Desde então, cada vez que um filho pega uma bola ao invés de um livro, uma mãe suspira e aponta para o céu, onde Joãozinho, lá de cima, deve estar pensando: Era só uma partida, mãe…")

        default:
            break
    }
}
