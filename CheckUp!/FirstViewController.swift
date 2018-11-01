//
//  FirstViewController.swift
//  CheckUp!
//
//  Created by Akil Hamilton on 2018-11-01.
//  Copyright © 2018 Akil Hamilton. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func submit(_ sender: UIButton) {
        self.username.text = "";
        self.username.resignFirstResponder()
        self.password.text = "";
        self.password.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

