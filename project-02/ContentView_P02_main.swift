import SwiftUI

struct ContentView_P02_main: View {
    @State private var countries = ["Estonia","France","Germany","Italy","Monaco","Nigeria","Poland","Spain", "UK"].shuffled()
    
    @State private var correct = Int.random(in: 0...2)
    
    @State private var showingAlert = false;
    @State private var showingSummary = false;
    @State private var scoreTitle = "";
    @State private var score = 0;
    @State private var answered = 0;
    @State private var mistake = ""
    
    var body: some View {
        ZStack{
            VStack(spacing: 30){
                VStack{
                    Text("Tap the flag of")
                        .font(.subheadline.weight(.heavy))
                        .foregroundStyle(.primary)
                    
                    Text(countries[correct])
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.secondary)
                }
                
                ForEach(0..<3) { number in
                    Button{
                        flagTap(number)
                    } label: {
                        
                        Image("\(countries[number])@2x")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 160, height: 100, alignment: .center)
                            .cornerRadius(4)
                            .border(.thickMaterial, width: 3)
                            .shadow(radius: 5)
                    }
                }
                Text("Score: \(score)")
                Text("\(answered+1) / 8")
                
                Button("restart", action: restart)
                    .buttonStyle(.bordered)
			}
        }
        .alert(scoreTitle, isPresented: $showingAlert) {
            Button("Continue"){}
            Button("Restart", action: restart)
        } message: {
            Text("Bruv, that is the flag of \(mistake)")
        }
        .alert("", isPresented: $showingSummary) {                    Button("Restart", action: restart)
        } message: {
            Text("You got \(score) out of 8 correctly.\(score == 8 ? " That's a perfect score":" Way to go")")
        }
    }
    
    func flagTap(_ number: Int) {
        if number == correct {
            scoreTitle = "Ayy got it fam"
            score+=1
        } else {
            scoreTitle = "What is it you doing"
            mistake = countries[number]
            showingAlert = true
            score = 0
        }
        answered += 1
        goAgain()
    }
    
    func goAgain() {
        if answered < 8 {
            countries.shuffle()
            correct = Int.random(in: 0...2)
        } else {
            showingSummary = true
        }
        
    }
    
    func restart() {
        score = 0;
        answered = 0;
        
        goAgain();
    }
}

