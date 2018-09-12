//
//  Animals.swift
//  Zookeeper
//
//  Created by Mitchell Socia on 9/12/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import Foundation

class Animal {
    
    var species: String
    var gender: String
    var name: String
    var habitat: String
    
    init(species: String, gender: String, name: String, habitat: String) {
        self.species = species
        self.gender = gender
        self.name = name
        self.habitat = habitat
        
    }
    
}

struct AnimalList {
    func animalListPopulate() -> [Animal] {
        
        let animal1 = Animal(species: "Lion", gender: "Female", name: "Diane", habitat: "Desert")
        let animal2 = Animal(species: "Penguin", gender: "Male", name: "Darrell", habitat: "Ice")
        let animal3 = Animal(species: "Tree Frog", gender: "Female", name: "Frida", habitat: "Jungle")
        let animal4 = Animal(species: "Owl", gender: "Female", name: "Karen", habitat: "Forest")
        
        let animalArray = [animal1, animal2, animal3, animal4]
        return animalArray
        
}
}
