//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Josue Cruz on 5/29/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
