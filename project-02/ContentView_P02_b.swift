import SwiftUI

struct ContentView_P02_b: View {
    @State private var visible = true
    @State private var alertVisible = false
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                if visible {
                    Button("Kill me please", role: .destructive) {
                        visible = false;
                    }
                    .buttonStyle(.bordered)
                } else {
                    Text("is ded")
                }
                
                Spacer()
                
                Button("Button Default"){}
                    .padding(2)
                Button("Button Plain"){}
                    .buttonStyle(.plain)
                    .padding(2)
                
                Button("Button Bordered"){}
                    .buttonStyle(.bordered)
                
                Button("Button Bordered Prominent"){}
                    .buttonStyle(.borderedProminent)
                Button("Button Bordered Prominent", role: .destructive){}
                    .buttonStyle(.borderedProminent)
                
                Button("Button Customizado"){}
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                
                Button {} label: {
                    Text("Button ainda mais Customizado")
                        .fontWeight(.bold)
                        .padding(8)
                        .background(.secondary)
                        .cornerRadius(10)
                }
                
                Button {} label: {
                    Label("Editar", systemImage: "pencil")
                }
                .buttonStyle(.bordered)
            }
            
            VStack(alignment: .leading) {
                Text("Alerts")
                
                Button("Show Alert") {
                    alertVisible = true
                }.buttonStyle(.bordered)
                    .alert("Important", isPresented: $alertVisible) {
                        Button("F", role: .destructive){}
                        Button("Cancel", role: .cancel){}
                    } message: {
                        Text("You fucked you real bad")
                    }
            }
            
        }.padding()
    }
}

struct SampleView02_Previews: PreviewProvider {
    static var previews: some View {
        SampleView02()
    }
}
