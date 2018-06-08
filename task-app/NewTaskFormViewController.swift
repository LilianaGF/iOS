//
//  NewTaskFormViewController.swift
//  task-app
//
//  Created by Towa on 6/8/18.
//  Copyright © 2018 Towa. All rights reserved.
//

import UIKit

class NewTaskFormViewController: UIViewController {

    @IBOutlet weak var PercentageText: UITextView!
    @IBOutlet weak var PercentageSlider: UISlider!
    @IBOutlet weak var DoneSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var strPercentage = "0%";
    var boolDone = false;
    @IBAction func PercentageSliderAction(_ sender: UISlider) {
        strPercentage = String(Int(self.PercentageSlider.value)) + "%";
        if(boolDone){
            self.PercentageText.text = "100%";
        }
        else{
            self.PercentageText.text = strPercentage;
        }
    }
    
    @IBAction func DoneSwitchAction(_ sender: UISwitch) {
        if(self.DoneSwitch.isOn){
            boolDone = true;
            self.PercentageText.text = "100%";
        }
        else{
            boolDone = false;
            self.PercentageText.text = strPercentage;
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
