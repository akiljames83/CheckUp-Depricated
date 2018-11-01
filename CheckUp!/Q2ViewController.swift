//
//  Q2ViewController.swift
//  CheckUp!
//
//  Created by Akil Hamilton on 2018-11-01.
//  Copyright © 2018 Akil Hamilton. All rights reserved.
//

import UIKit

class Q2ViewController: UIViewController {
    
    var count = 0;
    var add = 2;
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func slide2(_ sender: UISlider) {
        let num = lroundf(sender.value)
        if (num == 1) {
            label2.text = "Not At All"
            add = 0
        } else if (num == 2 ){
            label2.text = "Several Days"
            add = 1
        } else if (num == 3) {
            label2.text = "More Than Half the Days"
            add = 2
        } else if (num == 4) {
            label2.text = "Nearly Every Day"
            add = 3
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Q3 = segue.destination as! Q3ViewController
        Q3.count = count + add;
    }
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
