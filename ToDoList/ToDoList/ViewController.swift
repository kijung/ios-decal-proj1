//
//  ViewController.swift
//  ToDoList
//
//  Created by Duck Yoon Kim on 10/17/16.
//  Copyright © 2016 Kijung Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        /*
        let table = ToDoTableViewController();
        self.navigationController?.pushViewController(table,
                                                     animated: true)
 */
        self.view.backgroundColor = UIColor.white;
        
        /*
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<Todos", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.goback))
        */
        //self.navigationItem.leftBarButtonItem?.title = "Todos"
        //self.present(table, animated:true, completion: nil);
        //self.present(table, animated:true, completion: nil);
        //let nextViewController = storyBoard.instantiateViewController(withIdentifier: "nextView") as! ToDoTableViewController
        //self.present(nextViewController, animated:true, completion:nil)
        // Do any additional setup after loading the view.
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
