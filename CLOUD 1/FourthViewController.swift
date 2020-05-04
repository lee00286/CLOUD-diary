//
//  FourthViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-04.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    var data:[String] = ["Item 1", "Item 2", "Item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.dataSource = self
        // Add title to the navigation bar
        self.title = "U"
        // Make the title in larger font
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // Button: Add Note
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
        self.navigationItem.rightBarButtonItem = addButton
        // Button: Edit Note
        self.navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // Creates a new note
    @objc func addNote() {
        // If in editing mode, disable add note functionality
        if table.isEditing {
            return
        }
        // Name of new note
        let name:String = "Item \(data.count + 1)"
        data.insert(name, at: 0)
        // Add row
        let indexPath:IndexPath = IndexPath(row: 0, section: 0)
        // Insert animation (automatic is the animation type)
        table.insertRows(at: [indexPath], with: .automatic)
    }
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Cell for row in a IndexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    // Edit existing note
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        table.setEditing(editing, animated: animated)
    }
    
    // Edit content
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Remove data
        data.remove(at: indexPath.row)
        // Update table (remove row)
        table.deleteRows(at: [indexPath], with: .fade)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
