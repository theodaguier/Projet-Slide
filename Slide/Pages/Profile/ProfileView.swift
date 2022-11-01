//
//  ContentView.swift
//  Profil
//
//  Created by Mehdi 07 on 26/10/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var text: String
    
    var body: some View {
        ZStack {
            Color(red: 9/255, green: 18/255, blue: 39/255)
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Text("Choix du mode")
                    .bold()
                    .font(.system(size:22))
                    .foregroundColor(.white)
                HStack {
                    Button {
                        
                    } label: {
                        ImageView(image: "auditeur", textImage: "Auditeur")
                    }
                }
                HStack {
                    NavigationLink(destination: BibliothequeCreateur(text: text)) {
                            ImageView(image: "createur", textImage: "Créateur")
                    }
                }
                Spacer()
                    .frame(height: 70)
            }
        }
    }

    struct ImageView: View {
        var image: String
        var textImage: String
        var body: some View {
            ZStack (alignment: .leading){
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 250, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .brightness(-0.2)
                Text(textImage)
                    .padding(.leading, 30)
                    .padding(.top, 190)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(text: "")
        }
    }
}
