//
//  MessagingAppApp.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import SwiftUI

@main
struct MessagingAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
