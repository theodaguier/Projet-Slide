//
//  SpeakerComponent.swift
//  SlideProject
//
//  Created by Tefili Mohamed on 27/10/2022.
//

import SwiftUI

struct SpeakerComponent: View {
    @State private var isliked = true
    
    var body: some View {
        VStack {
            SpeakerButton(isLiked: $isliked)
        }
    }
}

struct SpeakerButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "speaker.wave.2" : "speaker.slash")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(isLiked ? .white : .white)
        })
        // le speaker n'est pas visible pck il est white.
    }
}

struct SpeakerComponent_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerComponent()
    }
}
