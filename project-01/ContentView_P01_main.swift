import SwiftUI

struct ContentView_P01_main: View {
    @FocusState private var amountHasFocus: Bool
    
    @State private var checkAmount = 0.0
    @State private var nPeople = 2
    @State private var tip: Double = 0
    
    let availableTipOptions = [0, 0.01, 0.02, 0.05, 0.1, 0.2]
    let currencyCode = Locale.current.currencyCode ?? "BRL"
    
    var totalPerPerson: Double {
        return (checkAmount * Double(1 + tip)) / Double(nPeople)
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text("Quanto deu a conta?")
                    TextField("Amount", value: $checkAmount, format: .currency(code: currencyCode))
                        .keyboardType(.decimalPad)
                        .focused($amountHasFocus)
                    
                    
                    
                    //Text(checkAmount > 0.0 ? "\(checkAmount.formatted(.currency(code: currencyCode)))?????????????" : "calculando...")
                } header: {
                    Text("O tamanho do estrago")
                }
                
                Section { 
                    Picker("Estão em quantis?", selection: $nPeople) {
                        ForEach(2..<100, id: \.self){
                            Text("\($0) people")
                        }
                    }.pickerStyle(.menu)
                } header: {
                    Text("numero de gentes")
                }
                
                Section {
                    Text("Gorgetinha?")
                    Picker("Gorgetinha?", selection: $tip) {
                        ForEach(availableTipOptions, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Subsídios ao dono do capital")
                }
                
                Spacer()
                
                Text(totalPerPerson > 0  ? "O total deu \((checkAmount * (1 + tip)).formatted(.currency(code: currencyCode)))" : "")
                Text(totalPerPerson > 0 ? "\(totalPerPerson.formatted(.currency(code: currencyCode))) por pessoa" : "calculando...")
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("donezo") {
                        amountHasFocus = false
                    }
                }
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
