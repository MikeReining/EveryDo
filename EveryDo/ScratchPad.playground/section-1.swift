// Playground - noun: a place where people can play

import UIKit

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

var dueDate = NSDate(dateString:"2014-06-06")
let today = NSDate()


if today.compare(dueDate) == NSComparisonResult.OrderedDescending
{
    println("Past Due Date!");
} else if today.compare(dueDate) == NSComparisonResult.OrderedAscending
{
    println("You have time left");
} else
{
    println("dates are equal");
}