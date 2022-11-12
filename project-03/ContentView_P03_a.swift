import SwiftUI

struct ContentView_P03_a: View {
    @State private var isOn = false;
    var body: some View {
		VStack(spacing: 16) {
            Button("Hello") {
                isOn.toggle()
            }
            .foregroundColor(.primary)

            .padding()
                        .border(.blue, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
			.background(isOn ? .blue : .green)
            .foregroundColor(.black)
            
            Text("bgs")
                .padding()
                .background(.black)
                .padding()
                .background(.blue)
                .padding()
                .background(.yellow)
			
			CapsuleText(text: "olar")
			CapsuleText(text: "Sample Text")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.background, ignoresSafeAreaEdges: .all)
        .font(.title)
    }
}
struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.primary)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews_P03_a: PreviewProvider {
	static var previews: some View {
		ContentView_P03_a()
	}
}
