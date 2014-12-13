//
//  ViewController.swift
//  bitioFirst
//
//  Created by V on 08/12/2014.
//  Copyright (c) 2014 V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var neshtoSiLabel: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: AnyObject) {
        messageLabel.hidden = false;
        messageLabel.text = neshtoSiLabel.text;
        messageLabel.textColor = UIColor.redColor();
        neshtoSiLabel.text = "";
        neshtoSiLabel.resignFirstResponder();
        // adding comment
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal);
    }

}

