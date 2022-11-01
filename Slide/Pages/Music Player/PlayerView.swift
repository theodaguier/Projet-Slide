import SwiftUI

struct ContentView: View {
    
    @State private var timing: Double = 0.0
    
    var body: some View {
        VStack {
            
            // HEADER avec boutons et fleches et auditeurs en titre
            HStack {
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "arrow.backward")
                    
                }
                Spacer()
                Text("Auditeurs")
                Spacer()
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "gear")
                    
                }
                
            }.padding()
            
            Spacer()
            
            // Pochette album
            
            Image("Fivio foreigh")
                .resizable()
                .frame(maxWidth: 400, maxHeight: 400,
                       alignment: .center)
                .padding()
            
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Slime Them (Feat. Lil Yachty)")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.primary)
                    Text("Fivio Foreigh")
                        .foregroundStyle(.secondary)
                    
                    
                }
                
                Spacer()
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundStyle(.green)
                    
                }
                
            }.padding()
            
            
            Slider(value: $timing, in: 0...180) {
                Text("Slider")
            } minimumValueLabel: {
                Text("0:00")
            }  maximumValueLabel: {
                Text("3:00")
            }.tint(.primary)
                .padding()
            
            
            // Button play etc
            
            HStack {
                Button {
                    print("shuffle")
                } label: {
                    Image(systemName: "shuffle")
                        .font(.title)
                }
                
                
                Spacer()
                
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 40))
                }.foregroundStyle(.primary)
                
                
                Spacer()
                
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 90))
                }.foregroundStyle(.primary)
                
                
                Spacer()
                
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "forward.end.fill")
                        .font(.system(size: 40))
                }.foregroundStyle(.primary)
                
                
                Spacer()
                
                
                Button {
                    print("More")
                } label: {
                    Image(systemName: "repeat")
                        .font(.title)
                }
                
            }.padding()
            
            Spacer()
            
            
            Spacer()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
