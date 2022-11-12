import SwiftUI

struct ContentView_P01_a: View {
    //para modificar vars em uma view, preciso do @state
    //so a view pode mexer nela mesma (private)
    @State var tapCount = 0;
    @State var name = "";
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Text("Hello from a form")
                    
                    Group {
                        Text("Hello from a group")
                        Text("Hello")
                    }
                    
                    Section {
                        Text("Hello there")
                    }
                }
                .navigationTitle("First Page")
                .navigationBarTitleDisplayMode(.inline)
                
                //modificando o estado da view com uma ação
                Button(tapCount > 0 ? "Uhhhh x \(tapCount)" : "Tap me daddy 😩") {
                    tapCount += 1
                }
                .padding()
                .border(.bar, width: 2)
                
                Form {
                    TextField("Enter your namae", text: $name)
                    Text("My name is chicka chicka slim \(name)")
                }
            }
        }
    }
}

struct ContentView_Previews_P01_a: PreviewProvider {
	static var previews: some View {
		ContentView_P01_a()
	}
}
