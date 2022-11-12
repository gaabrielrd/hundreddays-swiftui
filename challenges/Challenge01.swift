import SwiftUI

struct Project01_conversor: View {
    private let units = ["µm", "nm", "mm", "cm", "m"]
    
    @State private var selectedInput = "m"
    @State private var selectedOutput = "m"
    
    @State private var inputValue = 0.0
    
    private var convertedValue: Double {
        let magnitudeDif =  units.firstIndex(of: selectedInput)! - units.firstIndex(of: selectedOutput)!
        
        return inputValue * (pow(10, Double(magnitudeDif)))
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section {
                    TextField("entrada", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Quero converter")
                }
                
                Section{
                    Picker("Unidade de medida", selection: $selectedInput){
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    
                } header: {
                    Text("De")
                }
                
                Section{
                    Picker("Unidade de medida", selection: $selectedOutput){
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Para")
                }
                
                Section{
                    Text(convertedValue, format: .number)
                } header: {
                    Text("Resulté")
                }
            }.navigationTitle("Conversor")
        }
    }
    
    
}
