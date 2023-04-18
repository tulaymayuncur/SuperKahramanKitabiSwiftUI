//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Tülay MAYUNCUR on 12.09.2022.
//

import SwiftUI

struct ListeRowView: View {
    
    var superkahraman : SuperKahraman
    
    var body: some View {
        HStack{
            Image(superkahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180 , height: 180, alignment:.leading)
            
            Spacer()
            
            VStack{
        
                Text(superkahraman.isim).bold().font(.title2)
            Text(superkahraman.gercekIsmi)
            }
            
        }
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superkahraman: spiderman)
    }
}
