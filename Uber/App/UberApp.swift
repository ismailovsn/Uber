//
//  UberApp.swift
//  Uber
//
//  Created by Саид-Насир Исмаилов on 2023/06/24.
//

import SwiftUI

@main
struct UberApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
