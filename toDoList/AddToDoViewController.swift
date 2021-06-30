//
//  AddToDoViewController.swift
//  toDoList
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController() //grabs ToDo array stuff from other class
    
    @IBOutlet weak var titleTextField: UITextField! //outlet textfield
    
    @IBOutlet weak var importantSwitch: UISwitch! //outlet switch
    
    @IBAction func addTapped(_ sender: Any) { //action button
        
        //grab view context required to work w/ Core Data
        if let context=(UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            // create a new ToDoCD object (from .xcdatamodel
            let toDo=ToDoCD(entity: ToDoCD.entity(), insertInto: context)
            
            // if the titleTextField has text, text is called titleText
            if let titleText=titleTextField.text {
                toDo.name=titleText //assign object's name to input
                toDo.important=importantSwitch.isOn //assign important based on switch toggle
            }
            
            try? context.save()
            navigationController?.popViewController(animated: true)
        /* original function code w/o core data
        let toDo = ToDo() //makes new toDo object

          if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
             }
        }
        previousVC.toDos.append(toDo) //adds new ToDo input item to current to-do list
        
        previousVC.tableView.reloadData() //reloads table to update it with new change
        
        navigationController?.popViewController(animated: true) //switches screen back to To-Do list
             */
            
        }
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
