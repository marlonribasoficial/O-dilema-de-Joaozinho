import Foundation

func atacante(valor: Int) {
    switch valor {
        
        // Repete o chute
        case 1:
            if segundoChute == false {
                segundoChute = true
                printImagem(i: foto8Jogando)
                typewriterPrint("Joãozinho deu um chute tão forte na bola que, ao bater no poste, ela estourou com um barulho alto. Ele ficou parado, surpreso, olhando para a bola destruída. Depois, deu um sorriso sem jeito, pegou outra bola. Repita o chute novamente!")
                typewriterPrint(introducoes(string:"Digite novamente um número de 1 a 3.", cor:.white, corTexto: .black))
                let novoChute = entradaRange(r: 3)
                atacante(valor: novoChute)
            } else {
                printImagem(i: foto12Triste)
                if rec == false {
                    typewriterPrint("Joãozinho errou o chute, foi alvo das piadas dos amigos e, cabisbaixo, voltou para casa. No dia seguinte, sem ter estudado, ele fez a prova e, como era esperado por ele, ficou de recuperação.")
                    rec = true
                    textoIntrodutorio()
                    looping()
                } else {
                    printImagem(i: foto5Triste)
                    typewriterPrint("Ele, depois de errar o chute e ser alvo das piadas dos amigos, voltou para casa com a cabeça cheia de frustrações. No dia seguinte, com a prova de recuperação, ele ainda optou por não estudar e passou a noite distraído. Quando chegou a hora da prova, não conseguiu fazer quase nada. Quando a sua nota saiu, e seus pais ficaram sabendo, Seu Zé Felipe, pai de Joãozinho, olhou para ele com decepção: Você sabe o quanto o estudo é importante. Agora, vai aprender da maneira difícil. Joãozinho reprovou de ano, perdeu a chance de uma viagem com a família e entendeu tarde demais que, às vezes, a diversão pode esperar.")
                }
            }
        
        // Ganha o jogo e reprova
        case 2:
            printImagem(i: foto13Ganhando)
            if rec == false {
                typewriterPrint("Joãozinho brilhou em campo, marcou o gol da vitória e saiu comemorando como se fosse uma final de campeonato. Mas a festa durou pouco. Ao chegar em casa, exausto, deixou os livros de lado e foi dormir. No dia seguinte, sem ter estudado nada, encarou a prova de recuperação... e o placar não foi nada favorável. Resultado: ficou de recuperação.")
                rec = true
                textoIntrodutorio()
                looping()
            } else {
                printImagem(i: foto5Triste)
                typewriterPrint("Joãozinho deu um show no jogo, garantiu a vitória do time e voltou para casa como herói. Mas enquanto comemorava, esqueceu completamente da prova de recuperação no dia seguinte. Sem abrir um livro, foi confiante… e se deu mal. O resultado? Reprovado. Agora, enquanto os amigos avançam de ano, ele repete tudo de novo. No futebol, o placar foi a favor, mas na escola, a goleada foi contra...")
            }
    
        // Vira o novo Pelé
        case 3:
            printImagem(i: foto14Ganhando)
            typewriterPrint("Joãozinho brilhou em campo como nunca antes! Seus dribles desconcertantes e gols espetaculares foram gravados e rapidamente viralizaram nas redes sociais. O talento chamou a atenção de olheiros, e em pouco tempo, ele recebeu propostas de grandes clubes. Assim, Joãozinho assinou contrato com um dos maiores times do Brasil, sendo aclamado como o novo Pelé. Sua fama disparou, e onde quer que fosse, era reconhecido e ovacionado. Porém, o destino foi cruel. Anos mais tarde, em um momento de descuido ao volante, Joãozinho avançou um sinal vermelho e sofreu um acidente gravíssimo. O impacto foi devastador, e ele perdeu os movimentos das pernas, encerrando sua carreira promissora de maneira trágica. O garoto que driblava qualquer zagueiro agora teria que enfrentar o maior desafio de sua vida.")
        
        default:
            break
    }
}
