//
//  DormList.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct DormList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredDorm:[Dorm]{
        modelData.dorms.filter { dorm in
            (!showFavoritesOnly || dorm.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                
                ForEach(filteredDorm) { dorm in
                    NavigationLink{
                        DormDetail(dorm: dorm)
                    } label: {
                        DormRow(dorm: dorm)
                    }
                }
            }
            .navigationTitle("Dorms")
        }
        
    }
}

struct DormList_Previews: PreviewProvider {
    static var previews: some View {
        DormList()
            .environmentObject(ModelData())
    }
}
