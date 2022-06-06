//
//  DormList.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct DormList: View {
    var body: some View {
        NavigationView{
            List(dorms) { dorm in
                NavigationLink{
                    DormDetail()
                } label: {
                    DormRow(dorm: dorm)
                }
                
           
            }
            .navigationTitle("Dorms")
        }
        
    }
}

struct DormList_Previews: PreviewProvider {
    static var previews: some View {
        DormList()
    }
}
