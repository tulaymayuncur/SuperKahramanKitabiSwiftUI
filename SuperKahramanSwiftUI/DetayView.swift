//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Tülay MAYUNCUR on 12.09.2022.
//

import SwiftUI

struct DetayView: View {
    
    var secilenKahraman : SuperKahraman
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                
            VStack(alignment: .leading) {
        
            
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
                
            
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.6, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.35)
              
            
            VStack{
                
                HStack{
                
                Text(secilenKahraman.isim)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    
                    Spacer()
                    
                Text(secilenKahraman.gercekIsmi)
                    .font(.title)
                    .foregroundColor(.orange)
                }
                HStack{
                    
                    Text(secilenKahraman.sehir).bold()
                    Spacer()
                    Text(secilenKahraman.meslek).bold()
                    

                }.padding()
               
                Text(secilenKahraman.hikaye)
                    .foregroundColor(.brown)
                    .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height , alignment: .top)
            
            }.offset(y: UIScreen.main.bounds.height * -0.5)
                   
            

        }
      }
    }
  }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: captanAmerika)
            .previewInterfaceOrientation(.portrait)
    }
}
