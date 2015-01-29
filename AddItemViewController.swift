//
//  AddItemViewController.swift
//  EveryDo
//
//  Created by Michael Reining on 1/28/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    @IBAction func addTitle(sender: UITextField) {
        
    }
    
    @IBAction func addDescription(sender: UITextField) {
        
    }
    
    
    @IBAction func prioritySelected(sender: UISegmentedControl) {
    }
    
    override func viewDidLoad() {
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

}
