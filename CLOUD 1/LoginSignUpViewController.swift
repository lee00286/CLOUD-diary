//
//  LoginSignUpViewController.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-05.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)
    }
}
