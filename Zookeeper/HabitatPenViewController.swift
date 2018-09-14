//
//  HabitatDetailViewController.swift
//  Zookeeper
//
//  Created by Mitchell Socia on 9/12/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class HabitatPenViewController: UITableViewController {

    var animals: [Animal]?
    var animalPens: [String] = []
    
    func generateAnimalPen() -> [String] {
        guard let animalPens = animals else { return [] }
        var tempAnimalPens: [String] = []
        
        for animal in animalPens {
            tempAnimalPens.append(animal.species)
        }
    tempAnimalPens.removeDuplicates()
        return tempAnimalPens
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       animalPens = generateAnimalPen()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension HabitatPenViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalPens.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PenItem", for: indexPath)
        cell.textLabel?.text = "\(animalPens[indexPath.row]) Pen"
    
        
        return cell
    }
    
}

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()
        
        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
    
    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
