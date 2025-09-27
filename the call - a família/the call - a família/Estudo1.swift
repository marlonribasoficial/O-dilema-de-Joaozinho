import Foundation

// Função quando as horas de estudo forem menos de 2
func estudo1(h: Int) {
    typewriterPrint(introducoes(string:"Escolha uma dentre as opções de matérias do Joãozinho.", cor:.blue, corTexto: .white))
    
    for (index, materia) in materias.enumerated() {
        typewriterPrint("\(index+1) - \(materia)")
    }
                
    // Escolhe a matéria para estudar
    let materiaEscolhidaIndex = entradaRange(r: 5) - 1
    let materiaEscolhida = materias[materiaEscolhidaIndex]

    printImagem(i: foto2Estudando)
    typewriterPrint("Focado, ele passou \(h) hora(s) estudando \(materiaEscolhida). Será que o pobre coitado do Joãozinho estudou suficiente? Será que ele fez as escolhas certas?")
                    
    if prova == materiaEscolhida {
        let nota = Double.random(in: 0...10)
        let notaFormatada = String(format: "%.2f", nota)

        if rec == true {
            typewriterPrint("E lá estava ele novamente, parado diante da sala onde passaria as próximas horas enfrentando a prova que poderia mudar seu destino… Dessa vez, era a temida recuperação de \(prova), e o coração de Joãozinho palpitava como nunca...")
        } else {
            typewriterPrint("Chega o temido dia da prova. Joãozinho entra na sala, encara as folhas como se fosse um duelo de faroeste e faz o que pode...")
        }

        // Consegue ser aprovado
        if nota >= 5 {
            typewriterPrint(introducoes(string:"Dias depois, a nota finalmente sai... E SUA NOTA FOI \(notaFormatada)!!!", cor:.blue, corTexto: .white))
            printImagem(i: foto3Aprovacao)
            typewriterPrint("Joãozinho pulava de alegria! Com aquela nota, ele estava oficialmente aprovado, e o melhor, sem mais preocupações com a escola naquele ano! Seus pais, Dona Virgínia e Seu Zé Felipe, orgulhosos do filho, resolveram presenteá-lo com o tão sonhado videogame, aquele que ele cobiçava mais do que bolo de aniversário. Mas as surpresas não paravam por aí! Com a aprovação garantida, ele também ganhou algo ainda mais inesperado: uma viagem com os pais para o interior do Amazonas! Se não tivesse conseguido a nota necessária, nem videogame, nem viagem… só tristeza e mais estudos. No fim, Joãozinho aprendeu que o esforço sempre traz recompensas, e que estudar pode abrir portas para muito mais do que boas notas.")
                            
        // Fica de recuperação
        } else {
            if rec == false {
                printImagem(i: foto4Triste)
                typewriterPrint("Alguns dias se passam até que sua a nota finalmente sai... Infelizmente não era o que Joãozinho esperava, sua nota foi \(notaFormatada) e a recuperação em \(prova) era uma certeza... :(")
                rec = true
                textoIntrodutorio()
                looping()
            } else {
                printImagem(i: foto5Triste)
                typewriterPrint("Ao começar a prova, Joãozinho sentiu um frio na espinha... ele tinha esquecido absolutamente tudo o que havia estudado! O desespero tomou conta, e por mais que tentasse, as respostas simplesmente não vinham. No fim, o pior aconteceu...")
                typewriterPrint("Joãozinho tirou \(notaFormatada) e não conseguiu a nota necessária para passar em \(prova) e acabou reprovando... Naquele momento, ele percebeu que deixar os estudos para a última hora não era a melhor escolha. O talento e a sorte podem ajudar, mas nada substitui o esforço e a preparação.")
            }
        }
                    
    // Estudou a matéria errada
    } else {
        if rec == false {
            printImagem(i: foto1Duvida)
            typewriterPrint("Ao chegar na sala de aula e conversar com os amigos, Joãozinho levou um susto: a prova daquele dia não era de \(materiaEscolhida), como ele tinha pensado… mas sim de \(prova)! Sem tempo para desespero, ele respirou fundo e foi encarar o desafio contando apenas com a coragem, porque, baseado no seu conhecimento, a recuperação já era praticamente certa. No entanto, nem sua coragem foi suficiente, e dias depois veio a confirmação: ele realmente ficou de recuperação em \(prova).")
            rec = true
            textoIntrodutorio()
            looping()
        } else {
            printImagem(i: foto5Triste)
            typewriterPrint("Errar é humano, mas repetir o erro o que é? Bem... podemos perguntar para Joãozinho que NOVAMENTE estudou a matéria errada... E justo para a prova de recuperação, aquela que decidiria seu destino escolar. Acertar a matéria certa definitivamente não era o forte de Joãozinho… talvez ele devesse ter ido jogar bola desde o começo, teria sido menos arriscado!")
        }
    }
}
