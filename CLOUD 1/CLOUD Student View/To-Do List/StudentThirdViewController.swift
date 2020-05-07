//
//  StudentThirdViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-06.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class StudentThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddToDo, CheckBox {
    var tasks: [Task] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasks.append(Task(name: "Test object"))
    }
    
    // Number of tasks
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].checked {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxFILLED "), for: UIControl.State.normal)
        } else {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxOUTLINE "), for: UIControl.State.normal)
        }
        
        cell.delegate = self
        cell.indexPath = indexPath.row
        cell.tasks = tasks
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskViewController
        vc.delegate = self
    }
    
    // Save and add To-Do task
    func addToDo(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    // Fill in the button
    func checkBox(state: Bool, index: Int?) {
        tasks[index!].checked = state
        tableView.reloadRows(at: [IndexPath(row: index!, section: 0)], with: UITableView.RowAnimation.none)
    }
}

class Task {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

/*
class StudentThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var data: [String] = []
    var selectedRow: Int = -1
    var newRowText: String = ""
    // Save data persistantly in the file
    var fileURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        // Add title to the navigation bar
        self.title = "O"
        // Make the title in larger font
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // Always show the large title
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Button: Add To-Do
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addToDo))
        self.navigationItem.rightBarButtonItem = addButton
        
        // Button: Edit To-Do
        self.navigationItem.leftBarButtonItem = editButtonItem
        
        let baseURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        fileURL = baseURL.appendingPathComponent("todo.txt")
        
        // Load save memory
        load()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if selectedRow == -1 {
            return
        }
        data[selectedRow] = newRowText
        // If there's no text inside, automatically delete to-do
        if newRowText == "" {
            data.remove(at: selectedRow)
        }
        tableView.reloadData()
        save()
    }
    
    // Creates a new note
    @objc func addToDo() {
        // If in editing mode, disable add note functionality
        if tableView.isEditing {
            return
        }
        // Name of new to-do
        let name:String = ""
        data.insert(name, at: 0)
        
        // Add row
        let indexPath:IndexPath = IndexPath(row: 0, section: 0)
        // Insert animation (automatic is the animation type)
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        
        // Connect to to-do page
        self.performSegue(withIdentifier: "detail", sender: nil)
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
    
    // Edit existing to-do
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
    }
    
    // Edit content
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Remove data
        data.remove(at: indexPath.row)
        // Update table (remove row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        // Save
        save()
    }
    
    // Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Transition between views
        self.performSegue(withIdentifier: "detail", sender: nil)
    }
    
    // setText
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView:AddTaskViewController = segue.destination as! AddTaskViewController
        selectedRow = tableView.indexPathForSelectedRow!.row
        detailView.masterView = self
        detailView.setText(t: data[selectedRow])
    }
    
    // Save data
    func save() {
        // Save any type of data
        let a = NSArray(array: data)
        do {
            try a.write(to: fileURL)
        } catch {
            print("error writing file")
        }
    }
    
    // Load data
    func load() {
        // If there's saved data
        if let loadedData:[String] = NSArray(contentsOf: fileURL) as? [String] {
            data = loadedData
            tableView.reloadData()
        }
    }
}
*/

/*
class StudentThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddToDo, CheckBox {
    var tasks: [Task] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasks.append(Task(name: "Test object"))
    }
    
    // Number of tasks
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].checked {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxFILLED "), for: UIControl.State.normal)
        } else {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxOUTLINE "), for: UIControl.State.normal)
        }
        
        cell.delegate = self
        cell.indexPath = indexPath.row
        cell.tasks = tasks
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskViewController
        vc.delegate = self
    }
    
    // Save and add To-Do task
    func addToDo(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    // Fill in the button
    func checkBox(state: Bool, index: Int?) {
        tasks[index!].checked = state
        tableView.reloadRows(at: [IndexPath(row: index!, section: 0)], with: UITableView.RowAnimation.none)
    }
}

class Task {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
*/
