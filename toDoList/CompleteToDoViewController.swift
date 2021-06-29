//
//  CompleteToDoViewController.swift
//  toDoList
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    //linking other file classes to this one to access list info (name/info) for display
    var previousVC = ToDoTableViewController()
    var selectedToDo=ToDo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name //sets placeholder text to actual task name
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var titleLabel: UILabel! //outlet label
    
    @IBAction func completeTapped(_ sender: Any) { //action button
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
