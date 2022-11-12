import SwiftUI

struct ContentView_P01_b: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Picker .inline")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Picker("Pickadoodle", selection: $selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.inline)
                    
                }
                
                Section{
                    Text("Picker .menu")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Picker("Pickadoodle", selection: $selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu)
                }
                
                Section{
                    Text("Picker .segmented")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Picker("Pickadoodle", selection: $selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)}
                
                Section{                
                    Text("Picker .wheel")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Picker("Pickadoodle", selection: $selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.wheel)}
            }.navigationTitle("Pica Picker")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
