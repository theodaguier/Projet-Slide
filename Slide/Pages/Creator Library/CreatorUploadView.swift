//
//  UploadCreateur.swift
//  Slide
//
//  Created by Tefili Mohamed on 31/10/2022.
//

import SwiftUI

struct UploadCreateur: View {
        @State var text: String
        @State var isEditing = false
        var body: some View {
            VStack {
                

                HStack {
                   
                    // Titre
                    Text("Créateur").font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding(30)
                       
                    
                }
                
                HStack {
                    TextField("Search ...", text: $text)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            self.isEditing = true
                        }
         
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.text = ""
         
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                    }
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
                
                    Text("Upload ta création içi :")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                    
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 170, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 70)
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





struct UploadCreateur_Previews: PreviewProvider {
    static var previews: some View {
        UploadCreateur(text:"")
    }
}
