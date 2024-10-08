//
//  AnasayfaModel.swift
//  getirDesign
//
//  Created by Gül Karataş on 8.10.2024.
//

import Foundation
import RxSwift

class AnasayfaModel {
    
    var krepo = KategorilerDaoRepository()
    
    var kategoriListesi = BehaviorSubject<[Kategoriler]>(value: [Kategoriler]())
    
    init () {
        kategoriListesi = krepo.kategoriListesi
        krepo.yükle()
        
    }
    
    func kategoriListesiYükle() {
        krepo.yükle()
    }
}
