//
//  ThirdStudentDetailViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-16.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class ThirdStudentDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var titleToDo: UITextField!
    @IBOutlet weak var typeToDo: UIPickerView!
    @IBOutlet weak var courseToDo: UITextField!
    @IBOutlet weak var detailToDo: UITextField!
    @IBOutlet weak var priorityToDo: UITextField!
    @IBOutlet weak var duedateToDo: UIDatePicker!
    
    // Add data to type picker
    var typeToDoData = [["1", "2", "3", "4", "5", "6", "7"],
                      ["a", "b", "c", "d", "e", "f", "g", "j", "i", "j"],
                      ["!", "#", "$", "#"],
                      ["w", "x", "y", "z"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleToDo.text = "New ToDo"
        //courseToDo.text = "New Course"
        //detailToDo.text = "New Detail"
        //priorityToDo.text = "New Priority"
        
        self.typeToDo.delegate = self
        self.typeToDo.dataSource = self
    }
    
    
    // typeToDo
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return typeToDoData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typeToDoData[component].count
    }
    
    // Data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return typeToDoData[component][row]
    }
    
    // Capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triiggered whenever user makes a change to the picker selection
        // The parameter named row and component represents what was selected
    }
}
