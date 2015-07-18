//
//  SecondViewController.swift
//  To Do List
//
//  Created by Maciej Stanik on 18/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var itemLabel: UITextField! // Use exclamation mark when declaring something that don't exists at the moment
    @IBOutlet weak var detailsLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)  // hiding keyboard
        
    }
    
    // Actions
    @IBAction func AddButtonTapped(sender: UIButton) {
        
        println("Button tapped")
    }
    
    
    
    // TextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }


}

