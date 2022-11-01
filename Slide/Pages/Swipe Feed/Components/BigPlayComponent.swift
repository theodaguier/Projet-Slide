//
//  BigPlayComponent.swift
//  SlideProject
//
//  Created by Tefili Mohamed on 27/10/2022.
//

import SwiftUI

struct BigPlayComponent: View {
    @State private var isliked = false
    
    var body: some View {
        VStack {
            BigplayButton(isLiked: $isliked)
        }
    }
}

struct BigplayButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "play.fill" : "")
                .resizable()
                .frame(width: 130, height: 140)
                .foregroundColor(isLiked ? .white : .white)
                })
        // le button n'est pas visible pck il est white.
    }
}
               
struct BigPlayComponent_Previews: PreviewProvider {
    static var previews: some View {
        BigPlayComponent()
    }
}
