//
//  SearchView.swift
//  Projet Musique
//
//  Created by Coralie Fonlupt on 26/10/2022.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 9/255, green: 18/255, blue: 39/255)
                VStack {
                    Text("Recherche")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                    SearchTab(text: "")
                        .padding()
                    HStack {
                        Button(){
                        } label: {
                            ImageView(image: "pop", textImage: "POP")
                        }
                        Button(){
                        } label: {
                            ImageView(image: "rock", textImage: "ROCK")
                        }
                    }
                    HStack{
                        Button(){
                        } label: {
                            ImageView(image: "country", textImage: "COUNTRY")
                        }
                        Button(){
                        } label: {
                            ImageView(image: "rap", textImage: "RAP")
                        }
                    }
                    HStack {
                        Button(){
                        } label: {
                            ImageView(image: "reggae-min", textImage: "REGGAE")
                        }
                        Button(){
                        } label: {
                            ImageView(image: "variete_fr", textImage: "VARIÉTÉ FR")
                        }
                    }
                }
            }.ignoresSafeArea()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
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
                .frame(width: 150, height: 150, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .brightness(-0.3)
            Text(textImage)
                .padding(.leading, 20)
                .padding(.top, 100)
                .bold()
                .foregroundColor(.white)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
    }
}
