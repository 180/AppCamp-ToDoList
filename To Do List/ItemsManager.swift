//
//  ItemsManager.swift
//  To Do List
//
//  Created by Maciej Stanik on 18/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import Foundation

var itemsMgr: ItemsManager = ItemsManager()

struct item {
    var name = ""
    var details = ""
}

class ItemsManager : NSObject {
    
    var items = [item]() // Variable holding an array of tasks initialized with noting
    
    func addItem(name: String, details: String) {
        items.append(item(name: name, details: details))
    }
}


