//
//  CompleteToDoViewController.swift
//  ToDoListApp2021
//
//  Created by Veronica Cheung on 6/5/21.
//

/*import UIKit
import CoreData

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDoCD?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    @IBAction func completeTapped(_ sender: Any) {
 
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
*/

//
//  CompleteToDoViewController.swift
//  ToDoListApp
//
//  Created by Veronica Cheung on 31/5/2020.
//  Copyright © 2020 Veronica Cheung. All rights reserved.
//

import UIKit
import CoreData

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
          if let theToDo = selectedToDo {
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
          }
        }
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

