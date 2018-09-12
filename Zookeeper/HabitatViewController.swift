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

}

extension HabitatViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitatItem", for: indexPath)
        cell.textLabel?.text = "TEXT"
        
        return cell
    }
    
}
