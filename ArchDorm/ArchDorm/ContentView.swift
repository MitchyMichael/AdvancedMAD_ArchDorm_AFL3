//
//  ContentView.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            ImageView()
                .frame(width: UIScreen.main.bounds.width)
                .offset(y: -50)
                .padding(.bottom, -50)
            VStack(alignment: .leading){
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
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Facility")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        
                    }
                    VStack(alignment: .leading){
                        Text("- Orthopedic Hospital")
                        Text("- Ciputra University")
                        Text("- Banks")
                        Text("- Church")
                        Text("- Club House")
                    }
                    .padding(.leading)
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Details")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        
                    }
                    VStack(alignment: .leading){
                        Text("Mengusung konsep “A dream home for millennials” , Cornell and Denver Apartment memberikan semua yang terbaik untuk kebutuhan milenial yang serba praktis dan nyaman. Dilengkapi dengan 28 fasilitas yang lengkap untuk menunjang kehidupan modern yang aman. ")
                        Text("")
                        Text("Cornell & Denver Apartment ini terletak di lokasi strategis, yaitu di dalam CitraLand CBD yang berada tepat di persimpangan JLLB dan Radial Road, yang akan menjadi pusat pendidikan, lifestyle, entertainment, dan business.")
                            
                    }
                    .padding(.leading)
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Dorm Type")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        
                    }
                    HStack(){
                        Text("Residence Halls")
                        
                    }
                    .padding(.leading)
                }
                .padding()
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
