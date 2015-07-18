//
//  FirstViewController.swift
//  To Do List
//
//  Created by Maciej Stanik on 18/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var itemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        itemsTableView.reloadData()
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMgr.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier:"CellId")
        
        cell.textLabel?.text = itemsMgr.items[indexPath.row].name
        cell.detailTextLabel?.text = itemsMgr.items[indexPath.row].details
        
        return cell
        
    }


}

