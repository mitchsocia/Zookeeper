//
//  ViewController.swift
//  Zookeeper
//
//  Created by Mitchell Socia on 9/12/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class HabitatViewController: UITableViewController {

    var animals: [Animal] = []
    var habitats: [String] = []
    var animalList = AnimalList()
    var habitatList = Habitats()
    var habitatRow = ""
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animals = animalList.animalListPopulate()
        habitats = habitatList.populateHabitats()
        print(animals)
        print(habitats)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPens" {
            guard let habitatPenViewController = segue.destination as? HabitatPenViewController else { return }
            habitatPenViewController.animals = filteredAnimalsArray()
        }
    }
    
    
}

extension HabitatViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habitats.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitatItem", for: indexPath)
        cell.textLabel?.text = habitats[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selectedRow = tableView.cellForRow(at: indexPath)?.textLabel?.text else { return }
        print(selectedRow)
       
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        guard let selectedRow = tableView.cellForRow(at: indexPath)?.textLabel?.text else { return indexPath }
        habitatRow = selectedRow
        return indexPath 
    }
   
}

//var tempDesertArray: [Animal] = []


extension HabitatViewController {
    
    private func filteredAnimalsArray() -> [Animal] {
        var habitatAnimals: [Animal] = []

        switch habitatRow {
        case "Desert":
            for animal in animals {
                if animal.habitat == "Desert" {
                    habitatAnimals.append(animal)
                }
            }
        case "Jungle":
            for animal in animals {
                if animal.habitat == "Jungle" {
                    habitatAnimals.append(animal)
                }
            }
        case "Forest":
            for animal in animals {
                if animal.habitat == "Forest" {
                    habitatAnimals.append(animal)
                }
            }
        case "Ice":
            for animal in animals {
                if animal.habitat == "Ice" {
                    habitatAnimals.append(animal)
                }
            }
        default:
            break
}
        return habitatAnimals 
}


}
