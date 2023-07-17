/*
    Este é um jogo de par ou ímpar contra o computador ao estilo "melhor de três".
 
    Programa criado por Eduardo Cortez para o módulo 2 do curso de Desenvolva em Swift, a ser aplicado nos iOS Labs, no Brasil.
 */

func chooseEvenOrOdd() -> Int {
    var choice = ""
    var intChoice = 0
    choice = readLine()!
    intChoice = Int(choice)!

    if intChoice == 1 {
        print("Você selecionou \"par\".")
    } else if intChoice  == 2 {
        print("Você selecionou \"ímpar\".")
    } else {
        print("escolha inválida. Reinicie a aplicação e escolha o número 1 para \"par\" ou 2 para \"ímpar\".")
    }
    
    return intChoice
}


func playEvenOrOddGame() -> Int {
    var wins = 0
    var playerChoice = ""
    var intPlayerChoice = 0
    var sum = 0
    var computerChoice = 0
    var evenOrOdd = 0
    
    print("\nVamos jogar ao estilo \"melhor de três\"!\n")
    
    for _ in 1...3 {
        print("Escolha um número inteiro de 1 a 10.")
        playerChoice = readLine()!
        intPlayerChoice = Int(playerChoice)!
        
        if 1 <= intPlayerChoice && intPlayerChoice <= 10 {
            sum += intPlayerChoice
            
            computerChoice = Int.random(in: 1...10)
            print("\nO computador escolheu o número \(computerChoice)")
            
            sum += computerChoice
            print("\nOs números somados totalizam \(sum)")
            
            evenOrOdd = sum % 2
            
            if (evenOrOddChoice == 1 && evenOrOdd == 0) || (evenOrOddChoice == 2 && evenOrOdd == 1){
                wins += 1
                print("\nVocê venceu essa rodada.\n")
            } else {
                print("\nO computador venceu essa rodada.\n")
            }
        
        } else {
            print("\nEscolha inválida. O computador ganhou esta rodada.\n")
        }
            
            sum = 0
    }
    
    return wins
}

// ////////////////////////////////////////////////////
// O jogo começa aqui

print("##### PAR OU ÍMPAR ####\n\n")
print("Bem vindo(a)! Este é um jogo de par ou ímpar.\n")
print("Faça sua aposta: o resultado final deste jogo será par ou ímpar?")
print("1 - Par")
print("2 - Ímpar")
print("Digite apenas o número:")

var evenOrOddChoice = chooseEvenOrOdd()
// Valor evenOrOddChoice 1 = Par
// Valor evenOrOddChoice 2 = Ímpar

if evenOrOddChoice == 1 || evenOrOddChoice == 2 {
    var gamesWon = playEvenOrOddGame()
    
    if gamesWon == 2 {
        print("\n\n🎉🎉 Parabéns! Você venceu! 🎉🎉\n\n")
    } else {
        print("\n\nQue pena! não foi dessa vez...")
        print("Boa sorte da próxima vez\n\n")
    }
        
}
