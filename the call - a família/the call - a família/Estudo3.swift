import Foundation

// Função quando as horas de estudo forem mais de 6
func estudo3(h: Int) {
    if rec == false {
        printImagem(i: foto7Triste)
        typewriterPrint("Joãozinho decidiu virar a noite estudando, convencido de que essa era a melhor estratégia para se dar bem na prova. O problema? Ele esqueceu de combinar isso com o despertador. Resultado: dormiu feito uma pedra e perdeu a hora da prova. Agora, além de cansado, estava oficialmente de recuperação. Bela tática, gênio!")
        rec = true
        textoIntrodutorio()
        looping()
    } else {
        printImagem(i: foto6Estudando)
        typewriterPrint("Joãozinho passou a noite inteira mergulhado nos livros, estudando como nunca para sua prova de recuperação. Exausto, acabou pegando no sono sem nem perceber. Quando acordou, o desespero bateu: estava atrasado! Sem tempo para café da manhã ou até mesmo para amarrar direito os cadarços, saiu correndo em direção ao ponto de ônibus. Mas o destino não estava do seu lado… Ao chegar na rua, viu seu ônibus já no final do quarteirão, se afastando lentamente, como se zombasse dele. Gritou, acenou, correu, mas era tarde demais. Sem outra opção e sem tempo para chegar de outra forma, Joãozinho perdeu a prova e, com ela, a chance de passar de ano. O estudo foi intenso, mas, no fim, foi a pontualidade que reprovou.")
    }
}
