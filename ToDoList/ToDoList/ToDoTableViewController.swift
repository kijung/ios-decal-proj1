//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Duck Yoon Kim on 10/17/16.
//  Copyright © 2016 Kijung Kim. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    //let animals : [String] = ["Dogs","Cats","Mice"]
    var tasks : [Task] = []
    @IBAction func stats() {
        let vc = StatsViewController()
        //self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func add() {
        let vc = TaskViewController()
        //self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        print(vc.taskName.text)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Todos"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Stats", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ToDoTableViewController.stats))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(ToDoTableViewController.add))
        print("got here!")
        /*
        let c : Task = Task(n: nil, d:nil)
        if Shared.name != nil || Shared.description != nil {
            c.name = Shared.name
            c.description = Shared.description
            Shared.name = nil
            Shared.description = nil
        }
        tasks.append(c)
        */
        
        self.tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        self.tableView.delegate      =   self
        self.tableView.dataSource    =   self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Shared.list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = Shared.list[indexPath.row].name
        cell.detailTextLabel?.text = Shared.list[indexPath.row].description
        //cell.accessoryType = UITableViewCellAccessoryType.checkmark
        cell.accessoryView?.addSubview(UIButton(type: UIButtonType.custom))
        cell.addSubview(UIButton(type: UIButtonType.custom))
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    func delete(row: Int) {
        Shared.list.remove(at: row)
    }
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("hellO")
        if editingStyle == .delete {
            // Delete the row from the data source
            delete(row: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hellO")
        let cell:UITableViewCell = tableView.cellForRow(at: indexPath as IndexPath)!
        if (cell.accessoryType != UITableViewCellAccessoryType.checkmark) {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
            Shared.list[indexPath.row].completed = true
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none
            Shared.list[indexPath.row].completed = false
        }
    }
    


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
