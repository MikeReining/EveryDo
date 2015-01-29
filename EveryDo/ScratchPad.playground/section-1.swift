// Playground - noun: a place where people can play

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











var todosData: NSMutableArray = [
    Todo(title: "Pick Up Luka", description: "Pick him up from Preschool before 5:00PM and then buy food for dinner.  Have to leave office by 4:15 at the latest given traffic.", priorityNumber: 1, taskCompleted: false, date: nil),
    Todo(title: "Buy flowers", description: "Buy nice flowers for Michelle", priorityNumber: 2, taskCompleted: true, date: nil),
    Todo(title: "Complete EveryDo App", description: "Complete full app", priorityNumber: 3, taskCompleted: false, date: nil),
    Todo(title: "Go for a run", description: nil, priorityNumber: 1, taskCompleted: false, date: nil),
    Todo(title: "Create vision board", description: "Create nice vision board for office", priorityNumber: nil, taskCompleted: false, date: nil),
    Todo(title: "Test", description: nil, priorityNumber: nil, taskCompleted: true, date: nil)
]



