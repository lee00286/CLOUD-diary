//
//  AddTaskViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-07.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

protocol AddToDo {
    func addToDo(name: String)
}

class AddTaskViewController: UIViewController {
    @IBOutlet weak var taskNameOutlet: UITextField!
    @IBOutlet weak var taskTypeOutlet: UIPickerView!
    @IBOutlet weak var taskCourseOutlet: UITextField!
    @IBOutlet weak var taskDetailOutlet: UITextField!
    @IBOutlet weak var taskPriorityOutlet: UITextField!
    @IBOutlet weak var taskDueDateOutlet: UIDatePicker!
    
    
    @IBAction func saveAction(_ sender: Any) {
        if taskNameOutlet.text != "" {
            delegate?.addToDo(name: taskNameOutlet.text!)
        }
    }
    
    var delegate: AddToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
