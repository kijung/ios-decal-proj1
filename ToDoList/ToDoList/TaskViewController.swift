//
//  TaskViewController.swift
//  ToDoList
//
//  Created by Duck Yoon Kim on 10/19/16.
//  Copyright © 2016 Kijung Kim. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITextViewDelegate {
    var taskName : UITextField = UITextField()
    //var taskDescription : UITextField = UITextField()
    var taskDescription : UITextView = UITextView()
    @IBAction func back() {
        let vc = ToDoTableViewController()
        //self.present(vc, animated: true, completion: nil)
        Shared.name = taskName.text
        Shared.description = taskDescription.text
        let c : Task = Task(n: taskName.text, d:taskDescription.text)
        if (c.name != nil && c.name!.characters.count > 0) {
            c.completed = false
            Shared.list.append(c)
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        makeTask()
        makeDescription()
        
        // create Done button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(TaskViewController.back))
        // Do any additional setup after loading the view.
    }
    
    func makeTask() {
        taskName = UITextField(frame: CGRect(x: 10, y: 60, width: UIScreen.main.bounds.size.width, height: 50))
        taskName.placeholder = "Task Name"
        taskName.font = UIFont.systemFont(ofSize: 15)
        taskName.borderStyle = UITextBorderStyle.roundedRect
        taskName.autocorrectionType = UITextAutocorrectionType.no
        taskName.keyboardType = UIKeyboardType.default
        taskName.returnKeyType = UIReturnKeyType.done
        taskName.clearButtonMode = UITextFieldViewMode.whileEditing;
        taskName.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: taskName.frame.height - 1, width: taskName.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        taskName.borderStyle = UITextBorderStyle.none
        taskName.layer.addSublayer(bottomLine)
        
        self.view.addSubview(taskName)
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        //print("FDSL:FJSD")
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if taskDescription.text.isEmpty {
            textView.text = "Task Details"
            textView.textColor = UIColor.lightGray
        }
    }
    func makeDescription() {
        taskDescription = UITextView(frame: CGRect(x: 8, y: 111, width: UIScreen.main.bounds.size.width,
                                                   height: UIScreen.main.bounds.size.height - 110))
        taskDescription.text = "Task Details"
        taskDescription.textColor = UIColor.lightGray
        taskDescription.font = UIFont.systemFont(ofSize: 15)
        taskDescription.autocorrectionType = UITextAutocorrectionType.no
        taskDescription.keyboardType = UIKeyboardType.default
        taskDescription.returnKeyType = UIReturnKeyType.done
        taskDescription.delegate = self

        self.view.addSubview(taskDescription)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
