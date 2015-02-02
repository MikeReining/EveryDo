//
//  Todo.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class Todo: NSObject, NSCoding {
    var title: String!
    var details: String?
    var priorityNumber: Int?
    var taskCompleted: Bool
    var date: NSDate?
    
    init(title: String, details: String?, priority: Int?, completed: Bool, date: NSDate?) {
        self.title = title
        self.details = details
        self.priorityNumber = priority
        self.taskCompleted = completed
        self.date = date
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        super.encode()
        aCoder.encodeObject(self.title, forKey: "Title")
        aCoder.encodeObject(self.details, forKey: "Details")
        aCoder.encodeObject(self.priorityNumber, forKey: "PriorityNumber")
        aCoder.encodeObject(self.taskCompleted, forKey: "TaskCompleted")
        aCoder.encodeObject(self.date, forKey: "Date")
        
    }
    
    required init(coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObjectForKey("Title") as String
        self.details = aDecoder.decodeObjectForKey("Details") as? String
        self.priorityNumber = aDecoder.decodeObjectForKey("PriorityNumber") as? Int
        self.taskCompleted = aDecoder.decodeObjectForKey("TaskCompleted") as Bool
        self.date = aDecoder.decodeObjectForKey("Date") as? NSDate
        super.init()
    }
    
}
