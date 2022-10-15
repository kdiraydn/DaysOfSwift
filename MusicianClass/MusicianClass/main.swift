//
//  main.swift
//  MusicianClass
//
//  Created by Abdulkadir Aydın on 10.10.2022.
//

import Foundation

let james = Musicians(name: "James", age: 50, instrument: "Guitar", type: .Vocalist)

print(james.age)
print(james.type)
james.sing()


let kirk = SuperMusician(name: "kirk", age: 55, instrument: "guitar", type: .LeadGuitar)
kirk.sing()
james.sing()
