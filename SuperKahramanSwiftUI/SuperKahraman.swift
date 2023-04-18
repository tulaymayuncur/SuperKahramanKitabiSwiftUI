//
//  SuperKahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Tülay MAYUNCUR on 3.09.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    
    var id = UUID()
    var isim : String
    var gercekIsmi : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    var hikaye : String
    
    var koordinatLokasyonu : CLLocationCoordinate2D{
        
        CLLocationCoordinate2D(latitude: koordinat.latitude , longitude: koordinat.longitude)
        
        
    }
    
}

struct Koordinat{
    
    var latitude : Double //enlem
    var longitude : Double //boylam
    
}

let batman = SuperKahraman(isim: "Batman", gercekIsmi: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.881435485235514, longitude: -87.62926725749301),hikaye: "Batman, ilk kez 1939'un mayıs ayında Detective Comics'in 27. sayısında çizilen bir çizgi roman süper kahramanıdır. Çizer Bob Kane ve yazar Bill Finger tarafından yaratılmıştır. Ancak çizgi romanlarda yaratıcısı olarak sadece Bob Kane'in adı geçer.[1] İlk yaratıldığı zamandan bu yana Batman,Dünya çapında en çok bilinen süper kahramanlardan biridir. 'The Dark Knight' (Kara Şövalye), The Caped Crusader (Pelerinli Süvari) ve 'World's Greatest Dedective (Dünyanın En İyi Dedektifi) olarak ve hazırlıkla herkesi yenen adam olarak bilinir. Halk arasında en meşhur sözü 'Because I'm Batman' (Çünkü Ben Batman'im!) dir.")

let spiderman = SuperKahraman(isim: "Spiderman", gercekIsmi: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.71279673742127,  longitude: -74.04574121736428),hikaye: "Peter Parker, sosyal hayatında pek de başarılı olamayan bir öğrencidir. Okulda akranları tarafından sürekli olarak hor görülmekte ve aşık olduğu Mary Jane'i sadece hayal edebilmektedir. Bir gün okulun çıkardığı bir gezide üzerinde deneyler yapılan bir örümcek tarafından ısırılır. Peter Parker'ın sıradan hayatı baştan aşağı değişecektir. Peter, örümceğin içgüdüsel yeteneklerini kazanacak ve bunu şehrin karanlığında kaybettiği amcasının intikamını almak üzere kullanacaktır. Peter, artık 'Örümcek Adam' olacaktır.")

let captanAmerika = SuperKahraman(isim:"Captan Amerika", gercekIsmi: "Steve Rogers", gorselIsmi: "captanAmerica", sehir: "Los Angelese", meslek: "Asker", koordinat: Koordinat(latitude: 34.055630308882506, longitude: -118.25808264316593),hikaye: "Steve Grant Rogers, 4 Temmuz 1920 tarihinde fakir bir ailenin çocuğu olarak doğmuştur. Babasını küçük yaşta kaybeden Steve; sarışın, cılız ve içine kapanık bir çocuk olarak zorbalığa da uğramıştır. İyi bir ressamdır. 2. Dünya Savaşının olduğu dönemler orduya katılmak istemiş fakat fiziksel olarak yetersiz görüldüğü için reddedilmiştir. General Chester Philips, Steve’e süper asker serumundan bahsetmiştir ve Steve de deneye katılmayı kabul etmiştir. Deneyin başarılı olmasıyla bir insanın gelebileceği en üst düzeye gelmiştir. 1945 yılında arkadaşı Bucky Barnes ile Baron Zemo’yu durdurmaya çalışırken uçaktaki bomba patlamıştır. Bucky hayatını kaybederken Steve de Antartika’nın soğuk sularına gömülmüştür. Serum sayesinde hayatta kalan Steve yaklaşık 70 yıl sonra bulunmuştur. Bulunduğu zamana ve yepyeni bir dünyaya alışmaya çalışmıştır. Zamanla da Avengers üyesinin lideri haline gelmiştir.")

let superman = SuperKahraman(isim: "Superman" , gercekIsmi: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.1099927309346, longitude:  -94.55861436861554),hikaye: "Kal-El babası Jor-El ve annesi Lara tarafından patlamak üzere olan kripton gezegeninden kurtulması için bir roket ile dünya`ya gönderilir.Jor-El`in Kal-El`i dünya`ya göndermesinin sebebi sarı güneşin ona çok üstün güçler vereceğini bilmesidir.Dünya`ya düşen Kal-El`i Martha ve Jonathan Kent isminde iki çiftçi bulur ve ona Clark ismini verirler onu kendi çocukları gibi yetiştirirler.Üniversite`yi okumak için Metropolis kentine gelir.Üniversite`yi bitirince Daily Planet gazetesinde işe başlar.Burada Lois Lane ile tanışır ve olaylar gelişir...")

let superKahramanDizisi = [batman,spiderman,captanAmerika,superman ]
