//
//  FourthDetailViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-04.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class FourthDetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = text
    }
    
    func setText(t: String) {
        text = t
        // If view is not loaded, then update the textView
        if isViewLoaded {
            textView.text = t
        }
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
