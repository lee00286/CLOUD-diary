//
//  AddTaskViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-07.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var taskNameOutlet: UITextField!
    @IBOutlet weak var taskTypeOutlet: UIPickerView!
    @IBOutlet weak var taskCourseOutlet: UITextField!
    @IBOutlet weak var taskDetailOutlet: UITextField!
    @IBOutlet weak var taskPriorityOutlet: UITextField!
    @IBOutlet weak var taskDueDateOutlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
