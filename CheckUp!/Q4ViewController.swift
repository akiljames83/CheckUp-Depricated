//
//  Q4ViewController.swift
//  CheckUp!
//
//  Created by Akil Hamilton on 2018-11-01.
//  Copyright © 2018 Akil Hamilton. All rights reserved.
//

import UIKit

class Q4ViewController: UIViewController {
    
    var add = 2;
    var count = 0;
    @IBOutlet weak var label: UILabel!
    @IBAction func slide(_ sender: UISlider) {
        let num = lroundf(sender.value)
        if (num == 1) {
            label.text = "Not At All"
            add = 0
        } else if (num == 2 ){
            label.text = "Several Days"
            add = 1
        } else if (num == 3) {
            label.text = "More Than Half the Days"
            add = 2
        } else if (num == 4) {
            label.text = "Nearly Every Day"
            add = 3
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Q5 = segue.destination as! Q5ViewController
        Q5.count = count + add;
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
