//
//  TopicListTableViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 09/02/23.
//

import UIKit

class TopicListTableViewController: UITableViewController {

    var subjectTableViewController: SubjectTableViewController?
    
    var selectedTopic: String!
    
    var classes: [Grade] = [
        Grade(gradeNo: 1, title: "Class 1"),
        Grade(gradeNo: 2, title: "Class 2"),
        Grade(gradeNo: 3, title: "Class 3"),
        Grade(gradeNo: 4, title: "Class 4"),
        Grade(gradeNo: 5, title: "Class 5"),
        Grade(gradeNo: 6, title: "Class 6"),
        Grade(gradeNo: 7, title: "Class 7"),
        Grade(gradeNo: 8, title: "Class 8"),
        Grade(gradeNo: 9, title: "Class 9"),
        Grade(gradeNo: 10, title: "Class 10")
    ]
    
    var subjects: [Subject] = [
        Subject(title: "Mathematics"),
        Subject(title: "Chemistry"),
        Subject(title: "Biology"),
        Subject(title: "Astronomy"),
        Subject(title: "Physics")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Topics"
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ClassCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "subjectTableView" {
            let sharedTopic = selectedTopic
            let destinationVC = segue.destination as! SubjectTableViewController
            destinationVC.selectedTopic = sharedTopic!
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell", for: indexPath)
        let sub = subjects[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(sub.title)"
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sub = subjects[indexPath.row]
        selectedTopic = sub.title
        self.performSegue(withIdentifier: "subjectTableView", sender: self)

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
