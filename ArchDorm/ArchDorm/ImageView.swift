//
//  ImageView.swift
//  ArchDorm
//
//  Created by SIFT - Telkom DBT Air 5 on 06/06/22.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 350)
            
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("WhiteApart"))
    }
}
