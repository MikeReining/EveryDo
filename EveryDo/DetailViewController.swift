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
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: Todo!

    func configureView() {
        // Update the user interface for the detail item.
        titleLabel.text = detailItem.title
        if let description = detailItem.description {
            descriptionLabel.text = detailItem.description
        }
        if let priorityNumb = detailItem.priorityNumber {
            priorityLabel.text = String(priorityNumb)
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

