//
//  ArchDormApp.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

@main
struct ArchDormApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(modelData)
         
        }
    }
}
