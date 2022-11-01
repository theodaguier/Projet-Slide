//
//  SwipeFeed.swift
//  SlideProject
//
//  Created by Tefili Mohamed on 27/10/2022.
//


import SwiftUI

struct SwipeFeed: View {
    var body: some View {
        GeometryReader{ proxy in //sert à récuperer la taille de l'écran
            TabView{ //Carousel
                
                FeedView()
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .rotationEffect(Angle(degrees: -90))
                
            }
            .frame(width: proxy.size.height, height: proxy.size.width)
            .rotationEffect(Angle(degrees: 90), anchor: .bottomLeading)
            .offset(y: -proxy.size.width)
            .tabViewStyle(.page(indexDisplayMode: .never)) //Transformer TabView en mode carousel, sans avoir l'indice de page
            
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .ignoresSafeArea()//Pour que le carousel fasse la taille de l'écran entier
    }
}


struct SwipeFeed_Previews: PreviewProvider {
    static var previews: some View {
        SwipeFeed()
    }
}
