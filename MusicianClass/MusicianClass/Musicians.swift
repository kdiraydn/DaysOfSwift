//
//  Musicians.swift
//  MusicianClass
//
//  Created by Abdulkadir Aydın on 10.10.2022.
//

import Foundation

enum MusicianType {
case LeadGuitar
case Vocalist
case Drummer
case Bassist
case Violenist
}

class Musicians {
    
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    //initializer (constructor bir sınıftan bir obje oluşturulduğunda yapılacak işlemler
 
    init(name: String, age: Int, instrument: String, type: MusicianType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sing() {
        print("noting else metter")
    }
    
    private func test() {
        print("test")
    }
    
}
