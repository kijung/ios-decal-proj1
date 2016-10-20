//
//  StatsViewController.swift
//  ToDoList
//
//  Created by Duck Yoon Kim on 10/18/16.
//  Copyright © 2016 Kijung Kim. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        var completed : UILabel = UILabel()
        completed = UILabel(frame: CGRect(x: 0, y: 80, width: UIScreen.main.bounds.size.width, height: 40))
        completed.textAlignment = .center;
        completed.text = "Completed"
        completed.font = UIFont.boldSystemFont(ofSize: 32)
        self.view.addSubview(completed)
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
