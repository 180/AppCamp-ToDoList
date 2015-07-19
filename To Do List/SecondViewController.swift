//
//  SecondViewController.swift
//  To Do List
//
//  Created by Maciej Stanik on 18/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var itemTextField: UITextField! // Use exclamation mark when declaring something that don't exists at the moment
    @IBOutlet weak var detailsTextField: UITextField!
    
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
        println("Adding item \(itemTextField.text)")
        
        if (itemTextField.text.isEmpty) {
            displayAlert()
        } else {
            itemsMgr.addItem(itemTextField.text, details: detailsTextField.text)
            self.view.endEditing(true)
            itemTextField.text = ""
            detailsTextField.text = ""
            
            // Navigate to List
            self.tabBarController?.selectedIndex = 0;
        }
    }
    
    func displayAlert(){
        let alert = UIAlertController(title: "Empty name", message:
            "You cannot save an item without a name", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    // TextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    
}

