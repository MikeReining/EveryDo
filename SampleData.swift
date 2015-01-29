//
//  SampleData.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

// setup sample to do items for project

let todosData: NSMutableArray = [
    Todo(title: "Pick Up Luka", description: "Pick him up from Preschool before 5:00PM and then buy food for dinner.  Have to leave office by 4:15 at the latest given traffic.", priorityNumber: 1, taskCompleted: false, date: nil),
    Todo(title: "Buy flowers", description: "Buy nice flowers for Michelle", priorityNumber: 2, taskCompleted: true, date: nil),
    Todo(title: "Complete EveryDo App", description: "Complete full app", priorityNumber: 3, taskCompleted: false, date: nil),
    Todo(title: "Go for a run", description: nil, priorityNumber: 1, taskCompleted: false, date: nil),
    Todo(title: "Create vision board", description: "Create nice vision board for office", priorityNumber: nil, taskCompleted: false, date: nil),
    Todo(title: "Test", description: nil, priorityNumber: nil, taskCompleted: true, date: nil)
]


extension NSDate
{
    convenience
    init(dateString:String) {
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        let d = dateStringFormatter.dateFromString(dateString)
        self.init(timeInterval:0, sinceDate:d!)
    }
}

// Example:

var newDate = NSDate(dateString:"2014-06-06")