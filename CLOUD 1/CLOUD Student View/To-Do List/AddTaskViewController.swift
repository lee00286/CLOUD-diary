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
    @IBOutlet weak var inputOutlet: UIStackView!
    @IBOutlet weak var taskNameOutlet: UITextField!
    @IBOutlet weak var taskTypeOutlet: UIPickerView!
    @IBOutlet weak var taskCourseOutlet: UITextField!
    @IBOutlet weak var taskDetailOutlet: UITextField!
    @IBOutlet weak var taskPriorityOutlet: UITextField!
    @IBOutlet weak var taskDueDateOutlet: UIDatePicker!
    
    
    @IBAction func saveAction(_ sender: Any) {
        if taskNameOutlet.text != "" {
            delegate?.addToDo(name: taskNameOutlet.text!)
            // Go back to To-Do List after adding saving the task
            navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: AddToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

/*
class AddTaskViewController: UIViewController {
    // Connection between textView and AddTaskViewController class
    @IBOutlet weak var inputOutlet: UIStackView!
    @IBOutlet weak var taskNameOutlet: UITextField!
    @IBOutlet weak var taskTypeOutlet: UIPickerView!
    @IBOutlet weak var taskCourseOutlet: UITextField!
    @IBOutlet weak var taskDetailOutlet: UITextField!
    @IBOutlet weak var taskPriorityOutlet: UITextField!
    @IBOutlet weak var taskDueDateOutlet: UIDatePicker!
    
    // @IBOutlet weak var textView: UITextView!
    var text: String = ""
    var masterView: StudentThirdViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        taskNameOutlet.text = "New To-Do"
        
        // Make title be small inside the note
        self.navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        inputOutlet.becomeFirstResponder()
    }
    
    func setText(t: String) {
        text = t
        // If view is not loaded, then update the taskNameOutlet
        if isViewLoaded {
            taskNameOutlet.text = t
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = taskNameOutlet.text!
        inputOutlet.resignFirstResponder()
    }
}
*/


/*
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
            // Go back to To-Do List after adding saving the task
            navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: AddToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
*/
