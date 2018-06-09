//
//  Task.swift
//  task-app
//
//  Created by Towa on 6/8/18.
//  Copyright © 2018 Towa. All rights reserved.
//

import Foundation

public class Task {
    var shortDescription: String;
    var longDescription:String;
    var percentage:Int;
    
    init(shortDescription: String,  longDescription: String, percentage: Int)
    {
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.percentage = percentage
    }
    
    func toString() -> String
    {
        return "Short description: "  + self.shortDescription + ", Percentage: " + String(self.percentage);
    }
    
}
