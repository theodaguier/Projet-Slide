//
//  ViewRouter.swift
//  Slide
//
//  Created by Théo Daguier on 27/10/2022.
//

// Routes pour la navigation

import SwiftUI

class ViewRouter : ObservableObject {
    
    @Published var currentPage: Page = .feed
    
}

enum Page {
    case feed
    case search
    case profile
}
