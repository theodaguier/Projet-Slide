//
//  BibliothequeCreateur.swift
//  Slide
//
//  Created by Tefili Mohamed on 31/10/2022.
//

import SwiftUI

struct BibliothequeCreateur: View {
    @State var text: String
    @State var isEditing = false
    
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Spacer()
                    Spacer()
                    // Titre
                    Text("Créateur").font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding(30)
                    
                    Spacer()
                    NavigationLink(destination: UploadCreateur(text: text)) {
                        
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                        
                    }
                }
                
                // barre de recherche
                HStack {
                    SearchTab(text: "")
                }
                HStack {
                    Text("Mon profil créateur")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                    Spacer()
                }
                VStack(alignment: .leading){
                    ProfilePicture()
                    Discographie()
                }
                .padding(.horizontal, 25.0)
                
            }
            // Init frame
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            // Background Color
            .background(Color("BackgroundColor"))
        }
    }
    
    struct CreateurPicture: View {
        var body : some View {
            HStack(alignment: .bottom) {
                // Image
                HStack{
                    ZStack {
                        Image("ProfilePicture")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 92, height: 92)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(
                                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), location: 0.515625)]),
                                startPoint: UnitPoint(x: 0.5000000107753345, y: 1.1018958538847747),
                                endPoint: UnitPoint(x: 0.5000000164195291, y: -6.311700362360284e-8)))
                    }
                    .frame(width: 92, height: 92)
                }
                Spacer()
                // Name
                HStack{
                    Text("Théo")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading, 16.0)
            }
        }
    }
    
    struct MesCreations : View {
        
        // Discographie Data
        
        struct Disco : Identifiable {
            var id = UUID()
            let artist : String
            let songName : String
            let cover : String
        }
        
        var disco = [Disco(artist: "Century Palm",
                           songName: "Meet You",
                           cover: "Century_Palm-Meet_You"),
                     Disco(artist: "Rozwell Kid",
                           songName: "Precious Art",
                           cover: "Rozwell_Kid-Precious-Art"),
                     Disco(artist: "Schoolboy Q",
                           songName: "Blank face",
                           cover: "schoolboy-q-blank-face"),
                     Disco(artist: "Villagers",
                           songName: "Fever Dreams",
                           cover: "Villagers-Fever-Dreams")]
        
        var body : some View {
            
            
            // Initialisation du scroll horizontal
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    // Mapping artiste, titre et cover
                    ForEach(disco) { disco in
                        VStack{
                            // Cover
                            Image(disco.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 190.0, height: 190.0)
                            // Artiste
                            Text(disco.artist)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                                .font(.custom("SF Compact", size: 16))
                                .padding(.top, 16.0)
                            // Titre
                            Text(disco.songName)
                                .foregroundColor(Color.white)
                                .textCase(.uppercase)
                                .font(.custom("Gilroy-Light", size: 10))
                                .padding(.top, 1.0)
                            
                        }
                    }
                    .padding(.trailing, 35.0)
                }
            }
        }
    }
}


// PREVIEW


struct BibliothequeCreateur_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeCreateur(text: "")
    }
}
