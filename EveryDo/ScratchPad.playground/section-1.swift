// Playground - noun: a place where people can play

import UIKit

var myLabel: UILabel

var myString:NSString = "I Love Pizza!"
var myMutableString = NSMutableAttributedString()

myMutableString = NSMutableAttributedString(string: myString, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 18.0)!])
//Add more attributes here

//Apply to the label
myLabel.attributedText = myMutableString

