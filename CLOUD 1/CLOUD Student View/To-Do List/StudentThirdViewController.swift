//
//  StudentThirdViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-11.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class StudentThirdViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    var data: [String] = ["Item 1", "Item 2", "Item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.dataSource = self
    }
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Cell for row in a IndexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        // indexPath contains row and section of tableView
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}
