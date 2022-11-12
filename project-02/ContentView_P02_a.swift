import SwiftUI

struct ContentView_P02_a: View {
    var body: some View {
        VStack( alignment: .leading, spacing: 8) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            HStack{
                Text("Hello from the")
                Spacer()
                Text("Other Side")
            }
            
            ZStack{
                Color.blue.cornerRadius(4)
                Color(white: 0.7)
                    .frame(width: 240, height: 200, alignment: .center)
                    .opacity(0.3)
                    .cornerRadius(10)
                    .padding()
                    
                Text("Sample Text")
                    .fontWeight(.heavy)
                    .foregroundStyle(.secondary)
                    .padding(49)
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
            }
            
            HStack{
                LinearGradient(gradient: Gradient(colors: [.accentColor, .primary]), startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .black, location: 0.4),Gradient.Stop(color: .white, location: 0.6)]), startPoint: .leading, endPoint: .trailing)
            } 
            
            HStack{
                RadialGradient(gradient: Gradient(colors: [.black, .blue]), center: .center, startRadius: 20, endRadius: 200)
                
                AngularGradient(colors: [.blue,.cyan,.gray,.green,.indigo,.mint,.orange,.pink,.purple], center: .center)
            }
        }.padding()
    }
}

struct ContentView_Previews_P02_a: PreviewProvider {
	static var previews: some View {
		ContentView_P02_a()
	}
}
