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
    Todo(title: "Pick Up Luka", description: "Pick him up from Preschool before 5:00PM and then buy food for dinner.  Have to leave office by 4:15 at the latest given traffic.", priority: 1, completed: false, date: NSDate(dateString:"2015-01-28")),
    Todo(title: "Buy flowers", description: "Buy nice flowers for Michelle", priority: 2, completed: true, date: NSDate(dateString:"2015-01-25")),
    Todo(title: "Complete EveryDo App", description: "Complete full app", priority: 3, completed: false, date: NSDate(dateString:"2015-01-30")),
    Todo(title: "Go for a run", description: nil, priority: 1, completed: false, date: NSDate(dateString:"2015-01-29")),
    Todo(title: "Create vision board", description: "Create nice vision board for office", priority: nil, completed: false, date: nil),
    Todo(title: "Test", description: nil, priority: nil, completed: true, date: nil)
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