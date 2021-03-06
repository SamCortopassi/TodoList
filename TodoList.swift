//
//  TodoList.swift
//  TodoList
//
//  Created by Samantha Cortopassi on 1/9/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    private let fileURL: URL = {
        let documentDirectoryURLs = FileManager.default.urls(
            for: .documentDirectory, in: .userDomainMask)
        let documentDirectoryURL = documentDirectoryURLs.first!
        return documentDirectoryURL.appendingPathComponent("todolist.item")
    }()
    
    fileprivate var items: [String] = []
    
    override init() {
        super.init()
        loadItems()
    }
    
    func saveItems() {
        let itemsArray = items as NSArray
        
        print("Saving items to \(fileURL)")
        if !itemsArray.write(to: fileURL, atomically: true) {
            print("could not save to-do list")
    }
}
    func loadItems() {
    if let itemsArray = NSArray(contentsOf: fileURL) as? [String] {
        items = itemsArray
    }
    }

    
    func add(_ item: String) {
        items.append(item)
        saveItems()
    }
}
extension TodoList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
        
        return cell
    }
    
    }

