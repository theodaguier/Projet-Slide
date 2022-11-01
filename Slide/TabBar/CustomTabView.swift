//
//  CustomTabView.swift
//  Slide
//
//  Created by Théo Daguier on 26/10/2022.
//

import SwiftUI

struct CustomTabView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                
// Switch condition pour accéder à la page souhaité
                
                switch viewRouter.currentPage {
                case .feed:
                    SwipeFeed()
                case .search:
                    SearchView()
                case .profile:
                    ProfileView(text: "")
                }
                
                Spacer()
                
                HStack{
    // Paramètre Tab bar icon (Route, width et height, taille icône, nom de l'icône, padding R,L,T)
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .search, width: 50, height: 50, iconSize: 20, systemIconName: "magnifyingglass", paddingLeft: 0, paddingRight: 72, paddingTop: 0)
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .feed, width: 75, height: 75, iconSize: 30, systemIconName: "play.fill",
                        paddingLeft: 10,
                        paddingRight: 0,
                        paddingTop: 0)
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .profile, width: 50, height: 50, iconSize: 20, systemIconName: "person.fill",
                        paddingLeft: 72,
                        paddingRight: 0,
                        paddingTop: 0)
                }
            }
            .background(Color("BackgroundColor"))
        }
    }
}

struct TabBarIcon: View {
    
// Initialisation des paramètres
    
    @StateObject var viewRouter : ViewRouter
    let assignedPage : Page
    let width, height, iconSize : Double
    let systemIconName : String
    let paddingLeft, paddingRight, paddingTop: Double
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: width, height: height)
                    .cornerRadius(100)
                    .foregroundColor(.gray)
                
                Image(systemName: systemIconName)
                    .foregroundColor(.white)
                    .font(.system(size: iconSize))
            }
            .padding(.top, 0.0)
            .onTapGesture {
                viewRouter.currentPage = assignedPage
            }
            .padding(.leading, paddingLeft)
            .padding(.trailing, paddingRight)
            .padding(.top, paddingTop)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {

    static var previews: some View {
        CustomTabView(viewRouter: ViewRouter())
    }
}
