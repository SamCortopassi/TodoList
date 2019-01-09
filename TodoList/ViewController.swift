//
//  ViewController.swift
//  TodoList
//
//  Created by Samantha Cortopassi on 1/9/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addButtonPressed(_ sender: UIButton) {
 //       print("add to-do item: \(itemTextField.text)")
        guard let todo = itemTextField.text else {
            return
        }
        if todo != "" {
        todoList.add(todo)
            itemTextField.text = ""
        tableView.reloadData()
        }
        
    }



}
