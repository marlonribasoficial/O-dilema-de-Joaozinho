import Foundation
import Rainbow

let materias: [String] = [
    introducoes(string: "Matemática", cor: .red, corTexto: .white),
    introducoes(string: "Português",   cor: .blue, corTexto: .white),
    introducoes(string: "Ciências",    cor: .green, corTexto: .black),
    introducoes(string: "História",    cor: .magenta, corTexto: .white),
    introducoes(string: "Geografia",   cor: .yellow, corTexto: .black)
]

var prova: String = ""

if let materiaAleatoria = materias.randomElement() {
    prova = materiaAleatoria
}

var rec = false
var segundoChute = false

func looping() {
    let escolha = entradaRange(r: 2)
    
    // Caso 1 - Joãozinho vai estudar para a prova
    if escolha == 1 {
        typewriterPrint(introducoes(string:"Digite o número de horas que Joãozinho irá estudar:", cor:.white, corTexto: .black))
        let horas = entrada()
        
        switch horas {
            
            // Estudou menos que 2 horas
        case 0..<2:
            estudo1(h: horas)
            
            // Estudou entre 2 horas e 6 horas
        case 2..<6:
            estudo2(h: horas)
            
            // Estudou 6 ou mais horas
        case 6...:
            estudo3(h: horas)
            
        default:
            break
        }
        
        // Caso 2 - Joãozinho vai jogar bola
    } else {
        typewriterPrint("Bom… era só uma prova, certo? No fim das contas, uma tarde de diversão com os amigos parecia um negócio bem mais vantajoso. Com essa lógica infalível, Joãozinho calçou sua melhor chuteira, estufou o peito e partiu para o campinho do bairro, pronto para trocar os livros por dribles e esquecer, pelo menos por algumas horas, qualquer preocupação com notas.")
        typewriterPrint("Ao chegar no campinho, a discussão começou: quem ia para o ataque, quem seguraria a defesa, e, claro, quem teria a ingrata missão de ir para o gol. Para Joãozinho restou duas opções, escolha a posição onde ele deve jogar.")
        
        // Lista de posições
        let posicoes = [introducoes(string:"Goleiro", cor:.yellow, corTexto:.black), introducoes(string:"Atacante", cor:.green, corTexto:.black)]
        
        // Opções de posição para o jogador
        typewriterPrint(introducoes(string:"Escolha uma dentre as opções disponíveis:", cor:.white, corTexto: .black))
        
        for (index, posicao) in posicoes.enumerated() {
            typewriterPrint("\(index + 1) - \(posicao)")
        }
        
        // Lê a entrada do usuário
        let escolha = entradaRange(r: 2)
        let posicaoEscolhida = posicoes[escolha - 1]
        
        switch escolha {
            
        case 1:
            typewriterPrint("Decisão tomada! Joãozinho assumirá a posição de \(posicaoEscolhida). Agora, restava saber se ele seria um paredão ou apenas um espectador de luxo vendo a bola entrar.")
            typewriterPrint(introducoes(string:"Digite um número de 1 a 3.", cor:.white, corTexto: .black))
            let futuro = entradaRange(r: 3)
            goleiro(valor: futuro)
            
        case 2:
            typewriterPrint("Decisão tomada! Joãozinho jogará no ataque. Agora, restava saber se ele seria o artilheiro do time ou apenas um espectador de luxo esperando a bola chegar.")
            typewriterPrint(introducoes(string:"Digite um número de 1 a 3.", cor:.white, corTexto: .black))
            let futuro = entradaRange(r: 3)
            atacante(valor: futuro)
            
        default:
            break
        }
    }
}

print(titulo1)
print(titulo2)

repeat {
    print("Presione ENTER para começar a história!")
    _ = readLine()
} while false

textoIntrodutorio()
looping()

print(titulo3)
