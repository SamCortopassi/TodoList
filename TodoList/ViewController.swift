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
    @IBOutlet var tableBiew: UITableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func add ButtonPressed(_ sender: UIButton) {
        print("add to-do item: \(itemTextField.text)")
    }

}

