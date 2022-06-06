//
//  DormRow.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct DormRow: View {
    var dorm: Dorm
    
    var body: some View {
        HStack{
            dorm.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(dorm.name)
            Spacer()
            
            if dorm.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

struct DormRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DormRow(dorm: dorms[0])
            DormRow(dorm: dorms[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
