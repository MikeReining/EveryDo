//
//  AddItemViewController.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate {
    var todo: Todo!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    @IBAction func addTitle(sender: UITextField) {
        todo.title = sender.text
    }
    
    @IBAction func descriptionChanged(sender: UITextField) {
        todo.description = sender.text
    }
    
    @IBAction func prioritySelected(sender: UISegmentedControl) {
        todo.priorityNumber = sender.selectedSegmentIndex + 1
    }
    
    override func viewDidLoad() {
        todo = Todo(title: "New task", description: nil, priority: nil, completed: false, date: nil)
        taskTextField.delegate = self
        detailsTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        if textField == taskTextField {
            taskTextField.resignFirstResponder()
            detailsTextField.becomeFirstResponder()
            return true
        }
        
        if textField == detailsTextField {
            detailsTextField.resignFirstResponder()
            return true
        }
        
        return false
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveNewToDoItem" {
//            todo = Todo(title: taskTextField.text, description: detailsTextField.text, priority: nil, completed: false)
        }
    }
    

}
