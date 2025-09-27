import Foundation
import Rainbow

// Função para deixar o texto mais devagar
func typewriterPrint(_ text: String, delay: Double = 0.05) {
    for char in text {
        print(char, terminator: "")
        fflush(stdout)
        Thread.sleep(forTimeInterval: delay)
    }
    print()
}

// Função que deixa o texto colorido usando Rainbow
func introducoes(string: String, cor: Color, corTexto: Color) -> String {
    var resultado = string
    
    // Define a cor de fundo (CORRIGIDO: sem parênteses)
    switch cor {
    case .red: resultado = resultado.onRed
    case .green: resultado = resultado.onGreen
    case .yellow: resultado = resultado.onYellow
    case .blue: resultado = resultado.onBlue
    case .magenta: resultado = resultado.onMagenta
    case .cyan: resultado = resultado.onCyan
    case .white: resultado = resultado.onWhite
    case .black: resultado = resultado.onBlack
    default: break
    }
    
    // Define a cor do texto (CORRIGIDO: sem parênteses)
    switch corTexto {
    case .red: resultado = resultado.red
    case .green: resultado = resultado.green
    case .yellow: resultado = resultado.yellow
    case .blue: resultado = resultado.blue
    case .magenta: resultado = resultado.magenta
    case .cyan: resultado = resultado.cyan
    case .white: resultado = resultado.white
    case .black: resultado = resultado.black
    default: break
    }
    
    return resultado
}

// Função para printar as imagens formatadas
func printImagem(i: String) {
    print(i)
}

// Função para receber a entrada
func entrada() -> Int {
    var numero: Int?
    
    repeat {
        if let input = readLine(), let valor = Int(input) {
            if valor > 0 {
                numero = valor
            } else {
                typewriterPrint(introducoes(string:"Número inválido! Digite novamente.", cor:.red, corTexto:.white))
            }
        } else {
            typewriterPrint(introducoes(string:"Entrada inválida! Digite um número inteiro.", cor:.red, corTexto:.white))
        }
    } while numero == nil
    
    return numero!
}

// Função para receber a entrada
func entradaRange(r: Int) -> Int {
    var numero: Int?
    
    repeat {
        if let input = readLine(), let valor = Int(input) {
            if 1...r ~= valor {
                numero = valor
            } else {
                print(introducoes(string:"Número inválido! Digite novamente.", cor:.red, corTexto:.white))
            }
        } else {
            print(introducoes(string:"Entrada inválida! Digite um número inteiro.", cor:.red, corTexto:.white))
        }
    } while numero == nil
    
    return numero!
}

// Função que remove um elemento de um vetor e o reorganiza
func removerElemento(vetor: inout [String], index: Int) {
    if index >= 0 && index < vetor.count {
        vetor.remove(at: index)
    } else {
        print(introducoes(string:"Índice inválido!", cor:.red, corTexto:.white))
    }
}

// Função com a introdução da história
func textoIntrodutorio() {
    if rec {
        printImagem(i: foto3Estudando)
        typewriterPrint("É mais uma tarde de domingo e, como sempre, Joãozinho está com aquela dúvida existencial. Amanhã é dia de enfrentar a prova de recuperação de \(prova), e ele se vê dividido. Será que arrisca tudo confiando no que já sabe e vai jogar bola com os amigos? Ou será que ele resolve passar a tarde estudando, deixando a diversão de lado por um tempo?")
        typewriterPrint(introducoes(string:"O que ele deve fazer?", cor:.blue, corTexto: .white))
    } else {
        printImagem(i: foto1Duvida)
        typewriterPrint("Numa tranquila tarde de domingo, Joãozinho, um jovem pequeno, estava esparramado na cama, digerindo o banquete que chamava de almoço. Ele já tinha combinado com os amigos de ir ao campinho do bairro jogar futebol, mas, de repente, uma lembrança terrível atravessou sua mente: no dia seguinte, segunda-feira, tinha prova de manhã! E agora? Jogar bola e arriscar a nota ou estudar e arriscar a diversão? O dilema era real, e Joãozinho sentia que nenhuma escolha era 100% segura...")
        typewriterPrint(introducoes(string:"O que Joãozinho deve fazer?", cor: .blue, corTexto: .white))
    }
    typewriterPrint(introducoes(string:"Digite o número correspondente a uma das opções abaixo:", cor:.white, corTexto:.black))
    typewriterPrint(introducoes(string:"1 - Estudar para a prova.", cor:.yellow, corTexto:.black))
    typewriterPrint(introducoes(string:"2 - Ir jogar bola.", cor:.green, corTexto:.black))
}
