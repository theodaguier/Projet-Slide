//
//  HeartComponent.swift
//  SlideProject
//
//  Created by Tefili Mohamed on 27/10/2022.
//

import SwiftUI

struct HeartComponent: View {
    
    @State private var isliked = false
    
    var body: some View {
        VStack {
            HeartButton(isLiked: $isliked)
        }
    }
}

struct HeartButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(isLiked ? .red : .white)// le coeur n'est pas visible pck il est white.
        })
    }
}
struct HeartComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeartComponent()
    }
}
