//
//  Kategoriler.swift
//  getirDesign
//
//  Created by Gül Karataş on 8.10.2024.
//

import Foundation

class Kategoriler {
   
    var id: Int?
    var name: String?
    var resim: String?
    
    init() {
        
    }
    
    init(id: Int, name: String, resim: String) {
        self.id = id
        self.name = name
        self.resim = resim
    }
    
    
}
