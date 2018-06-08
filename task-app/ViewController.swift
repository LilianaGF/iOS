///
//  ViewController.swift
//  task-app
//
//  Created by Towa on 31/05/18.
//  Copyright © 2018 Towa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TaskDoneText: UITextView!
    @IBOutlet weak var TaskToDoText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("on viewDidLoad() method");
    }

    override func viewWillAppear(_ animated: Bool) {
        print("on viewWillAppear() method");
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("on viewDidAppear() method");
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("on viewWillDisappear() method");
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("on viewDidDisappear() method");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ShowNewTaskForm(_ sender: Any) {
        print("New Button clicked");
        TaskDoneText.text = "JIJI";
    }
    
}

