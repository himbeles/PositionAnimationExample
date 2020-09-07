import SwiftUI

struct ContentView: View {
    @State var toggle = false
    var body: some View {
        VStack{
            if self.toggle {
                Rectangle().frame(width: 200, height: 200)
            }
            Button(action: {
                self.toggle.toggle()
            }){
                Text("Tap me!")
                    .scaleEffect(self.toggle ? 2 : 1)
                    .animation(
                        Animation.easeInOut(duration: 1.5)
                    )
            }
        }
        .frame(width: 400, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
