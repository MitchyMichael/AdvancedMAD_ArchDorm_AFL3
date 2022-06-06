//
//  DormDetail.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct DormDetail: View {
    @EnvironmentObject var modelData: ModelData
    var dorm: Dorm
    
    var dormIndex: Int {
        modelData.dorms.firstIndex(where: { $0.id == dorm.id })!
    }
    
    var body: some View {
        ScrollView{
            ImageView(image: dorm.image)
                .frame(width: UIScreen.main.bounds.width)
                .offset(y: -100)
                .padding(.bottom, -100)
            VStack(alignment: .leading){
               HStack{
                    VStack (alignment: .leading){
                        HStack{
                            Text(dorm.name)
                                .font(.title)
                                .fontWeight(.bold)
                            FavoriteButton(isSet: $modelData.dorms[dormIndex].isFavorite)
                        }
                        
                        Text(dorm.address)
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
                        Text(dorm.details)
                            
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
        .navigationTitle(dorm.name)
        .navigationBarTitleDisplayMode(.inline)

        
    }
}

struct DormDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        DormDetail(dorm: ModelData().dorms[0])
            .environmentObject(modelData)
    }
}
