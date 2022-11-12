import SwiftUI

struct ContentView_P03_a: View {
    @State private var isOn = false;
    var body: some View {
        VStack {
            Button("Hello") {
                isOn.toggle()
            }
            .foregroundColor(.primary)

            .padding()
                        .border(.blue, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .background(isOn ? .blue : .black)
            .foregroundColor(.black)
            
            Text("bgs")
                .padding()
                .background(.black)
                .padding()
                .background(.blue)
                .padding()
                .background(.yellow)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black, ignoresSafeAreaEdges: .all)
        .font(.title)
        
        CapsuleText(text: "olar")
        CapsuleText(text: "Sample Text")
    }
}
struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}
