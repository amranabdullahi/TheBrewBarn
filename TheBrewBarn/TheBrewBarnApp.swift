//
//  TheBrewBarnApp.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

@main
struct TheBrewBarnApp: App {
    @State private var isLoggedIn: Bool = false
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
            ContentView()
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
            }
    }
}
