//
//  SecondViewController.swift
//  CheckUp!
//
//  Created by Akil Hamilton on 2018-11-01.
//  Copyright © 2018 Akil Hamilton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var count = 2;
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func slide1(_ sender: UISlider) {
        let num = lroundf(sender.value)
        if (num == 1) {
            label1.text = "Not At All"
            count = 0
        } else if (num == 2 ){
            label1.text = "Several Days"
            count = 1
        } else if (num == 3) {
            label1.text = "More Than Half the Days"
            count = 2
        } else if (num == 4) {
            label1.text = "Nearly Every Day"
            count = 3
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Q2 = segue.destination as! Q2ViewController
        Q2.count = count;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

