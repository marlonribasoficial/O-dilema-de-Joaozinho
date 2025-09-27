import Foundation

// Função quando as horas de estudo forem mais de 2 e menos de 6
func estudo2(h: Int) {
    typewriterPrint(introducoes(string:"Escolha duas dentre as opções de matérias do Joãozinho. Uma por vez!", cor:.white, corTexto: .black))
                
    var materiasCopia = materias
    var materiasEscolhidas = ["", ""]
    var contador = 0
    var contadorInverso = 5
            
    repeat {
        for (index, materia) in materiasCopia.enumerated() {
            typewriterPrint(introducoes(string:"\(index+1) - \(materia)", cor:.blue, corTexto: .white))
        }
                    
        let materia = entradaRange(r: contadorInverso)
        materiasEscolhidas[contador] = materiasCopia[materia - 1]
        removerElemento(vetor: &materiasCopia, index: materia - 1)
        contador += 1
        contadorInverso -= 1
    } while materiasEscolhidas.contains("")
    
    printImagem(i: foto3Estudando)
    typewriterPrint("Joãozinho decidiu focar seus estudos em \(materiasEscolhidas[0]) e \(materiasEscolhidas[1]) por \(h) horas. Com tanto tempo dedicado, será que ele finalmente conseguiu absorver tudo ou só decorou metade e esqueceu o resto?")
                
    if materiasEscolhidas[0] == prova || materiasEscolhidas[1] == prova {
        let nota = Double.random(in: 0...10)
        let notaFormatada = String(format: "%.2f", nota)
                    
        if rec == true {
            typewriterPrint("E mais uma vez, lá estava Joãozinho, parado diante da sala, encarando a porta como se fosse o portão do inferno. Nas próximas horas, ele enfrentaria a prova que definiria seu destino… Dessa vez, era a temida recuperação de \(prova), e seu coração batia tão forte que ele quase podia ouvir a trilha sonora do suspense se formando ao fundo.")
        } else {
            typewriterPrint("Chega o tão temido dia da prova. Joãozinho entra na sala, encara as folhas como se fosse um desafio decisivo e faz o possível para enfrentar o que estava por vir.")
        }
                    
        // Consegue ser aprovado
        if nota >= 5 {
            typewriterPrint(introducoes(string:"Dias depois, a nota finalmente sai... E SUA NOTA FOI \(notaFormatada)!!!", cor:.blue, corTexto: .white))
            printImagem(i: foto3Aprovacao)
            typewriterPrint("Joãozinho pulava de alegria! Com aquela nota, ele estava oficialmente aprovado, e o melhor, sem mais preocupações com a escola naquele ano! Seus pais, Dona Virgínia e Seu Zé Felipe, orgulhosos do filho, resolveram presenteá-lo com o tão sonhado videogame, aquele que ele cobiçava mais do que bolo de aniversário. Mas as surpresas não paravam por aí! Com a aprovação garantida, ele também ganhou algo ainda mais inesperado: uma viagem com os pais para o interior do Amazonas! Se não tivesse conseguido a nota necessária, nem videogame, nem viagem… só tristeza e mais estudos.")
                        
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
                typewriterPrint("Joãozinho tirou \(notaFormatada) não conseguiu a média necessária em \(prova) e acabou reprovando... Naquele momento, ele percebeu que deixar os estudos para a última hora não era a melhor escolha. O talento e a sorte podem ajudar, mas nada substitui o esforço e a preparação.")
            }
        }
                    
    // Estudou as matérias erradas
    } else {
        if rec == false {
            printImagem(i: foto1Duvida)
            typewriterPrint("Ao chegar na sala de aula e conversar com os amigos, Joãozinho levou um susto: a prova daquele dia não era de \(materiasEscolhidas[0]) nem de \(materiasEscolhidas[1]), como ele tinha pensado… mas sim de \(prova)! Sem tempo para desespero, ele respirou fundo e foi encarar o desafio contando apenas com a coragem, porque, baseado no seu conhecimento, a recuperação já era praticamente certa. No entanto, nem sua coragem foi suficiente, e dias depois veio a confirmação: ele realmente ficou de recuperação em \(prova).")
            rec = true
            textoIntrodutorio()
            looping()
        } else {
            printImagem(i: foto5Triste)
            typewriterPrint("Errar é humano, mas repetir o erro o que é? Bem... podemos perguntar para Joãozinho que NOVAMENTE estudou a matéria errada... E justo para a prova de recuperação, aquela que decidiria seu destino escolar. Acertar a matéria certa definitivamente não era o forte de Joãozinho… talvez ele devesse ter ido jogar bola desde o começo, teria sido menos arriscado!")
        }
    }
}
