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
    var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important == true {
            taskLabel.text = "❗️ \(task!.name!)"
            
        } else {
            taskLabel.text = task!.name!
        }


        // Do any additional setup after loading the view.
       
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()

        
        navigationController!.popViewController(animated: true)

    
    }
    

}
