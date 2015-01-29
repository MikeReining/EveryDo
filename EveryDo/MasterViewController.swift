//
//  MasterViewController.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    var detailViewController: DetailViewController? = nil
    var objects = todosData

    override func awakeFromNib() {
        super.awakeFromNib()
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
            self.clearsSelectionOnViewWillAppear = false
            self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = controllers[controllers.count-1].topViewController as? DetailViewController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        objects.insertObject(NSDate(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = objects[indexPath.row] as Todo
                let controller = (segue.destinationViewController as UINavigationController).topViewController as DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    // Examples of unwinding segues called when DONE button is pressed on add player screen
    
    @IBAction func cancelToMasterVC(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveNewToDoItem(segue:UIStoryboardSegue) {
        // Create reference to source VC
        let addItemVC = segue.sourceViewController as AddItemViewController
        
        //add new item to array of items
        objects.addObject(addItemVC.todo)
        
        //update tableView with new row
        let indexPath = NSIndexPath(forRow: objects.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)

        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as ToDoCell

        let object = objects[indexPath.row] as Todo
        
        // Strikethrough completed tasks
        if object.taskCompleted == true {
            cell.titleLabel.attributedText = strikethroughText(object.title)
            if let description: String = object.description {
                cell.descriptionLabel?.attributedText = strikethroughText(object.description!)
            }
            // Display priority if it exists
            if let priorityNumb: Int = object.priorityNumber {
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
                cell.priorityNumberLabel?.text = priorityText
            }

        // If Not completed, display as regular text
        } else {
            cell.titleLabel?.text = object.title
            cell.descriptionLabel?.text = object.description
            // Display priority if it exists
            if let priorityNumb: Int = object.priorityNumber {
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
                cell.priorityNumberLabel?.text = priorityText
            }
        }
        
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            objects.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    func strikethroughText(string:String) -> NSMutableAttributedString {
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: string)
        attributeString.addAttribute(NSStrikethroughStyleAttributeName, value: 2, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }

    // Swipe to Delete Row in Table View
    

    


    

}

