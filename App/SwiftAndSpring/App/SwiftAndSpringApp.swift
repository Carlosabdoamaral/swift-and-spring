//
//  SwiftAndSpringApp.swift
//  SwiftAndSpring
//
//  Created by Carlos Amaral on 05/01/22.
//

import SwiftUI

@main
struct SwiftAndSpringApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("GET")
                    }
                
                SendMessageView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("POST")
                    }
                
                
            }
        }
    }
}
