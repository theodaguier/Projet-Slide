//
//  SlideApp.swift
//  Slide
//
//  Created by Théo Daguier on 26/10/2022.
//

// Fichier de l'application

import SwiftUI

@main
struct SlideApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                SplashScreenView()
                CustomTabView(viewRouter: viewRouter)

            }
        }
    }
}
