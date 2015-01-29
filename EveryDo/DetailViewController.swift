//
//  DetailViewController.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!

    var detailItem: Todo!

    func configureView() {
        // Update the user interface for the detail item.
        titleLabel.text = detailItem.title
        if let description = detailItem.description {
            descriptionLabel.text = detailItem.description
        }
        
        // Add priority if set
        if let priorityNumb = detailItem.priorityNumber {
            var priorityText: String = ""
            switch priorityNumb {
            case 1:
                priorityText = "⭐️"
            case 2:
                priorityText = "⭐️⭐️"
            case 3:
                priorityText = "⭐️⭐️⭐️"
            default:
                println("no priority set")
            }

            priorityLabel.text = priorityText
        }

        // Add due date if set
        // Display due date if it exists
        if let dueDate = detailItem.date {
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "MMM-dd" // Jan-28
            let dateAsString = dateFormatter.stringFromDate(dueDate)
            let today = NSDate()
            if today.compare(dueDate) == NSComparisonResult.OrderedDescending && detailItem.taskCompleted == false {
                println("Past Due Date!")
                dueDateLabel.text = "PAST DUE"
                dueDateLabel.textColor = UIColor.redColor()
            } else {
                println("dates are equal");
                dueDateLabel.text = "Due: \(dateAsString)"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

