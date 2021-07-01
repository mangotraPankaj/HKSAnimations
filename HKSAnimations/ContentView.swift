//


import SwiftUI

struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var dragAmount = CGSize.zero
    @State private var enabled = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    self.enabled.toggle()
                }
            }
            if(enabled) {
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100, alignment: .center)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
