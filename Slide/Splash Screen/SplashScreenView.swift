//
//  SplashScreenView.swift
//  Slide
//
//  Created by Théo Daguier on 28/10/2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var animate = false
    @State var endSplash = false
    
    var body: some View {
            ZStack {
                Color(red: 9/255, green: 18/255, blue: 39/255)
                    .ignoresSafeArea(.all)
                HStack{
                    
                    Image(systemName: "arrow.left")
                        .bold()
                        .font(.system(size:22))
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    VStack {
                        Image(systemName: "arrow.up")
                            .offset(y: 65.0)
                        Spacer()
                        VStack{
                            Image("logo")
                                .resizable()
                                .frame(width: 270.0, height:270.0)
                                .scaledToFit()
                        }
                        
                        Spacer()
                        Image(systemName: "arrow.down")
                            .padding()
                        
                    }
                    .bold()
                    .font(.system(size:22))
                    .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .bold()
                        .font(.system(size:22))
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .ignoresSafeArea(.all, edges: .all)
            // Pour activer l'animation
            .onAppear(perform: splashAnimation)
            // Pour faire disparaitre l'animation
            .opacity(endSplash ? 0 : 1)
            .zIndex(1)
        
    }
    
    // Animation
    
    func splashAnimation() {
        // Fonction asynchrome
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.25) {
            withAnimation(Animation.easeOut(duration: 0.65)) {
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 0.45)) {
                endSplash.toggle()
            }
        }
    }
}


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
