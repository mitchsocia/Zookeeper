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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(animals)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension HabitatPenViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PenItem", for: indexPath)
        cell.textLabel?.text = "\(animals![indexPath.row].species) Pen"
        
        return cell
    }
    
}
