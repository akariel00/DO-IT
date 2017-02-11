//
//  CompleteTaskViewController.swift
//  DO IT
//
//  Created by Ariel Nelson on 2/11/17.
//  Copyright © 2017 Ariel Nelson. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important == true {
            taskLabel.text = "❗️ \(task.name)"
            
        } else {
            taskLabel.text = task.name
        }


        // Do any additional setup after loading the view.
       
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
    

}
