//
//  ContentView.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        Text("THIS IS SPLASH SCREEN")
            .font(.title)
            .fontWeight(.regular)
            .padding()
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
            .previewDevice("iPhone 13 Pro Max")
    }
}
