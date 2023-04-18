//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Tülay MAYUNCUR on 3.09.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            
            List(superKahramanDizisi){ SuperKahraman in
               // Text(SuperKahraman.isim)
                NavigationLink(destination: DetayView(secilenKahraman: SuperKahraman),
                    
                    label: {
                    
                   ListeRowView(superkahraman: SuperKahraman)
                    
                })
            }.navigationTitle(Text("Superkahraman Kitabı"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
