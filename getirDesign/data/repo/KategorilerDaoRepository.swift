//
//  KategorilerDaoRepository.swift
//  getirDesign
//
//  Created by Gül Karataş on 8.10.2024.
//

import Foundation
import RxSwift

class KategorilerDaoRepository {
    
    var kategoriListesi = BehaviorSubject<[Kategoriler]>(value: [Kategoriler]())
    
    func yükle(){
        var liste = [Kategoriler]() 
        let s1 = Kategoriler(id: 1, name: "Süper İkili", resim:"superikili")
        let s2 = Kategoriler(id: 2, name: "Kazandıranlar", resim:"kazandıranlar")
        let s3 = Kategoriler(id: 3, name: "Çiçekçi", resim:"cicekci")
        let s4 = Kategoriler(id: 4, name: "İndirimler", resim:"indirimler")
        let s5 = Kategoriler(id: 5, name: "Mor İndirim", resim:"morindirim")
        
        let s6 = Kategoriler(id: 6, name: " Su & İçecek", resim:"suicecek")
        let s7 = Kategoriler(id: 7, name: " Meyve & Sebze", resim: "meyvesebze")
        let s8 = Kategoriler(id: 8, name: "Süt Ürünleri", resim: "suturun")
        let s9 = Kategoriler(id: 9, name: "Fırından", resim: "fırından")
        let s10 = Kategoriler(id: 10, name: "Atıştırmalık", resim: "atistirmalik")
        let s11 = Kategoriler(id: 11, name: "Dondurma", resim: "dondurma")
        let s12 = Kategoriler(id: 12, name: "Temel Gıda", resim: "temelgida")
        liste.append(s1)
        liste.append(s2)
        liste.append(s3)
        liste.append(s4)
        liste.append(s5)
        liste.append(s6)
        liste.append(s7)
        liste.append(s8)
        liste.append(s9)
        liste.append(s10)
        liste.append(s11)
        liste.append(s12)
   
        kategoriListesi.onNext(liste)
    }
}
