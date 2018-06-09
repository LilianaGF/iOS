//
//  NewTaskFormViewController.swift
//  task-app
//
//  Created by Towa on 6/8/18.
//  Copyright © 2018 Towa. All rights reserved.
//

import UIKit

class NewTaskFormViewController: UIViewController {

    //Mark: Properties
    @IBOutlet weak var PercentageText: UITextView!
    @IBOutlet weak var PercentageSlider: UISlider!
    @IBOutlet weak var DoneSwitch: UISwitch!
    @IBOutlet weak var ShortDescriptionText: UITextField!
    @IBOutlet weak var LongDescriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var intPercentage = 0;
    var boolDone = false;
    @IBAction func PercentageSliderAction(_ sender: UISlider) {
        intPercentage = Int(self.PercentageSlider.value);
        if(boolDone){
            self.PercentageText.text = "100%";
        }
        else{
            self.PercentageText.text = intPercentage.description + "%";
        }
    }
    
    @IBAction func DoneSwitchAction(_ sender: UISwitch) {
        if(self.DoneSwitch.isOn){
            boolDone = true;
            self.PercentageText.text = "100%";
        }
        else{
            boolDone = false;
            self.PercentageText.text = intPercentage.description + "%";
        }
    }


    @IBAction func SaveNewTaskAction(_ sender: UIButton) {
        
        let task: Task = Task(
            shortDescription: self.ShortDescriptionText.text!,
            longDescription: self.LongDescriptionText.text,
            percentage: intPercentage);
        
        print("TASK: " + (task).toString());
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
