import SwiftUI

struct ContentView: View {
   
    @State var playerCard: String = ""
    @State var cpuCard: String = "perfect octave"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
       
        ZStack {
            
            Image("plain background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                HStack {
                    Spacer()
                    Image (playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                TextEditor(text: $playerCard)
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
    }
    
    func deal() {
        // Randomize the players card
        let names = ["minor 2nd", "major 2nd", "minor 3rd", "major 3rd", "perfect 4th", "diminished 5th", "perfect 5th", "minor 6th", "major 6th", "minor 7th", "major 7th", "perfect octave"]
        var playerCardValue: Int = 0
        
        // Randomize the cpus card
        cpuCard = names.randomElement()!
        var cpuCardValue: Int = 0
        
        if playerCard == "minor 2nd" {
            playerCardValue = 1
        } else if playerCard == "major 2nd" {
            playerCardValue = 2
        } else if playerCard == "minor 3rd" {
            playerCardValue = 3
        } else if playerCard == "major 3rd" {
            playerCardValue = 4
        } else if playerCard == "perfect 4th" {
            playerCardValue = 5
        } else if playerCard == "diminished 5th" {
            playerCardValue = 6
        } else if playerCard == "perfect 5th" {
            playerCardValue = 7
        } else if playerCard == "minor 6th" {
            playerCardValue = 8
        } else if playerCard == "major 6th" {
            playerCardValue = 9
        } else if playerCard == "minor 7th" {
            playerCardValue = 10
        } else if playerCard == "major 7th" {
            playerCardValue = 11
        } else if playerCard == "perfect octave" {
            playerCardValue = 12
        }
        
        if cpuCard == "minor 2nd" {
            cpuCardValue = 1
        } else if cpuCard == "major 2nd" {
            cpuCardValue = 2
        } else if cpuCard == "minor 3rd" {
            cpuCardValue = 3
        } else if cpuCard == "major 3rd" {
            cpuCardValue = 4
        } else if cpuCard == "perfect 4th" {
            cpuCardValue = 5
        } else if cpuCard == "diminished 5th" {
            cpuCardValue = 6
        } else if cpuCard == "perfect 5th" {
            cpuCardValue = 7
        } else if cpuCard == "minor 6th" {
            cpuCardValue = 8
        } else if cpuCard == "major 6th" {
            cpuCardValue = 9
        } else if cpuCard == "minor 7th" {
            cpuCardValue = 10
        } else if cpuCard == "major 7th" {
            cpuCardValue = 11
        } else if cpuCard == "perfect octave" {
            cpuCardValue = 12
        }
        
        // Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
