//
//  SplashScreenView.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            ContentView()
        } else {
            VStack{
                Image(systemName: "hare.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                Text("Arch Dorm")
                    .font(.title2)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
