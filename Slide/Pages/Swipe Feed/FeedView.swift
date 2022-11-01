//
//  FeedView.swift
//  Slide
//
//  Created by Théo Daguier on 28/10/2022.
//

import SwiftUI

struct ImageFeed: Identifiable {
    var id = UUID()
    let image: String
}

let imageFeeds = [
    ImageFeed(image: "chanteuse1"),
    ImageFeed(image: "chanteuse2"),
    ImageFeed(image: "guitariste")
]

struct FeedView: View {
    
    var body: some View {
        ForEach(imageFeeds) { feed in
            ZStack {
                
                Image(feed.image)
                    .resizable()
                    .ignoresSafeArea(.all)
                
                BigPlayComponent()
                
                VStack{
                    HeartComponent()
                        .padding(20)
                    
                    SpeakerComponent()
                        .padding(20)
                    
                    Image(feed.image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 2))
                        .padding(20)
                }
                .padding([.top, .leading], 275.0)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
