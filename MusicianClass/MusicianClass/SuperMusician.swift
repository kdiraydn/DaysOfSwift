//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Abdulkadir Aydın on 10.10.2022.
//

import Foundation

class SuperMusician : Musicians {
    
    func sing2() {
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }
    
}
