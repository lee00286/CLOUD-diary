//
//  FourthViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-04.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    var data: [String] = []
    var selectedRow: Int = -1
    var newRowText: String = ""
    // Save data persistantly in the file
    var fileURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
        
        // Add title to the navigation bar
        self.title = "U"
        // Make the title in larger font
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // Always show the large title
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Button: Add Note
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
        self.navigationItem.rightBarButtonItem = addButton
        
        // Button: Edit Note
        self.navigationItem.leftBarButtonItem = editButtonItem
        
        let baseURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        fileURL = baseURL.appendingPathComponent("notes.txt")
        
        // Load save memory
        load()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if selectedRow == -1 {
            return
        }
        data[selectedRow] = newRowText
        // If there's no text inside, automatically delete note
        if newRowText == "" {
            data.remove(at: selectedRow)
        }
        table.reloadData()
        save()
    }
    
    // Creates a new note
    @objc func addNote() {
        // If in editing mode, disable add note functionality
        if table.isEditing {
            return
        }
        // Name of new note
        let name:String = ""
        data.insert(name, at: 0)
        // Add row
        let indexPath:IndexPath = IndexPath(row: 0, section: 0)
        // Insert animation (automatic is the animation type)
        table.insertRows(at: [indexPath], with: .automatic)
        table.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        
        // Connect to note page
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
        let detailView:FourthDetailViewController = segue.destination as! FourthDetailViewController
        selectedRow = table.indexPathForSelectedRow!.row
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
            table.reloadData()
        }
    }
}
