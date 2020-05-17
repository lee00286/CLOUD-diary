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
    
    var text: String = ""
    var textCourse: String = ""
    // Add data to type picker
    var typeToDoData = [["1", "2", "3", "4", "5", "6", "7"],
                        ["a", "b", "c", "d", "e", "f", "g", "j", "i", "j"],
                        ["!", "#", "$", "#"],
                        ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ"]]
    
    var masterView: ThirdStudentViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleToDo.text = text
        courseToDo.text = textCourse
        //detailToDo.text = "New Detail"
        //priorityToDo.text = "New Priority"
        
        self.typeToDo.delegate = self
        self.typeToDo.dataSource = self
    }
    
    // UITextField; titleToDo
    // Set text from the ThirdStudentViewController
    func setTextTitle(t: String) {
        text = t
        // If view is not loaded, then update titleToDo
        if isViewLoaded {
            titleToDo.text = t
        }
    }
    
    // UITextField; courseToDo
    // Set text from the ThirdStudentViewController
    func setTextCourse(t: String) {
        textCourse = t
        // If view is not loaded, then update courseToDo
        if isViewLoaded {
            courseToDo.text = t
        }
    }
    
    // UIPickerView
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
        // This method is triggered whenever user makes a change to the picker selection
        // The parameter named row and component represents what was selected
    }
    
    // Leaving ThirdStudentDetailViewController
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = titleToDo.text!
        //masterView.newRowCourse = courseToDo.text!
        //titleToDo.resignFirstResponder()
    }
}
