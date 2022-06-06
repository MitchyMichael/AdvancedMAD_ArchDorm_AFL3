//
//  ContentView.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                VStack (alignment: .leading){
                    Text("Denver Apartment")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("PJ7M+G2F Universitas Ciputra, RW.1, Made, Sambikerep, Surabaya City, East Java")
                }
                Spacer()
            }
            .padding()
            
            Divider()
            
            HStack{
                Text("Facility")
                    .font(.headline)
                Spacer()
                
            }
            .padding()
            
            Text("")
            
            Text("Orthopedic Hospital
                 Ciputra University
                 Banks
                 Church
                 Club House")
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
