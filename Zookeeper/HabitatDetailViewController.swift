//
//  HabitatDetailViewController.swift
//  Zookeeper
//
//  Created by Mitchell Socia on 9/12/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class HabitatDetailViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension HabitatDetailViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PenItem", for: indexPath)
        cell.textLabel?.text = ""
        
        return cell
    }
    
}
