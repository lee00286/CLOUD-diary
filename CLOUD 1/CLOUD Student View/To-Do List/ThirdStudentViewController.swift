//
//  ThirdStudentViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-16.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class ThirdStudentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
        
        // Add title to the navigation bar
        self.title = "To-Do List"
        // Make the title in larger font
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // Button: Add ToDo
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addToDo))
        self.navigationItem.rightBarButtonItem = addButton
        
        // Button: Edit ToDo
        self.navigationItem.leftBarButtonItem = editButtonItem
        
        // Load save memory
        load()
    }
    
    // Creates a new To-Do
    @objc func addToDo() {
        // If in editing mode, disable add note functionality
        if table.isEditing {
            return
        }
        
        // Name of new note
        let name: String = "Item \(data.count + 1)"
        data.insert(name, at: 0)
        
        // Add row
        let indexPath: IndexPath = IndexPath(row: 0, section: 0)
        // Insert animation (automatic is the animation type)
        table.insertRows(at: [indexPath], with: .automatic)
        
        // Save memory
        save()
        
        //table.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        
        // Connect to To-Do page
        self.performSegue(withIdentifier: "detail", sender: nil)
    }
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Cell for row in a IndexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        // indexPath contains row and section of tableView
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    // Edit existing ToDo
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
        // Save memory
        save()
    }
    
    // Delegate; controls interaction with the app
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Transition between view controllers
        self.performSegue(withIdentifier: "detail", sender: nil)
    }
    
    // Save data
    func save() {
        // Associate data with the key "todos" to extract data in load()
        UserDefaults.standard.set(data, forKey: "todos")
    }
    
    // Load data
    func load() {
        // If there's saved data (data is not nil)
        if let loadedData: [String] = UserDefaults.standard.value(forKey: "todos") as? [String] {
            data = loadedData
            // Reload the tableView
            table.reloadData()
        }
    }
}
