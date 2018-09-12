//
//  BabyAnimal.swift
//  Zookeeper
//
//  Created by Mitchell Socia on 9/12/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import Foundation

class BabyAnimal: Animal {
    
    var age: Int
    
    init(species: String, gender: String, name: String, habitat: String, age: Int) {
        self.age = age
        super.init(species: species, gender: gender, name: name, habitat: habitat)
    }
}
