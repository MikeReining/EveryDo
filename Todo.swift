//
//  Todo.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class Todo {
    var title: String!
    var description: String?
    var priorityNumber: Int?
    var taskCompleted: Bool
    var date: NSDate?
    
    init(title: String, description: String?, priorityNumber: Int?, taskCompleted: Bool, date: NSDate?) {
        self.title = title
        self.description = description
        self.priorityNumber = priorityNumber
        self.taskCompleted = taskCompleted
        self.date = date
    }
    
}
