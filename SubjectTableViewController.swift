//
//  SubjectTableViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 11/02/23.
//

import UIKit

class SubjectTableViewController: UITableViewController {

    var allTopics: [Topic] = [
        Topic(grade: 1, subject: "Mathematics", topicNo: 1, topicTitle: "Shapes and Spatial Understanding", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 2, topicTitle: "Solids Around Us", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 3, topicTitle: "Numbers from 0-9", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 4, topicTitle: "Numbers from 10-20", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 5, topicTitle: "Addition And Subtraction (Upto 20)", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 6, topicTitle: "Numbers from 21–99", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 7, topicTitle: "Mental Arithmetic", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 8, topicTitle: "Money", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 9, topicTitle: "Measurements", difficulty: "Easy"),
        Topic(grade: 1, subject: "Mathematics", topicNo: 10, topicTitle: "Patterns", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 1, topicTitle: "Matter", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 2, topicTitle: "Physical and Chemical Changes", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 3, topicTitle: "Elements, Compounds and Mixtures", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 4, topicTitle: "Atomic Structure", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 5, topicTitle: "Language of Chemistry", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 6, topicTitle: "Chemical Reactions", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 7, topicTitle: "Hydrogen", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 8, topicTitle: "Water", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 9, topicTitle: "Carbon and its Compounds", difficulty: "Easy"),
        Topic(grade: 8, subject: "Chemistry", topicNo: 10, topicTitle: "Water", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 1, topicTitle: "Journey to Outer Space", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 2, topicTitle: "Explore Jupiter", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 3, topicTitle: "The Asteroid Belt", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 4, topicTitle: "Saturn's Rings", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 5, topicTitle: "Explore Venus", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 6, topicTitle: "Explore Mars", difficulty: "Easy"),
        Topic(grade: 8, subject: "Astronomy", topicNo: 7, topicTitle: "Earth: Our Home Planet", difficulty: "Easy"),
        
    ]
    
    var currentTopicsList: [Topic] = []
    
    func populateCurrentTopicList() {
        for i in allTopics {
            if i.subject == selectedTopic {
                currentTopicsList.append(i)
            }
        }
    }
    
    var topicOffset = 0
    var topicTableViewController: TopicListTableViewController?
    var selectedTopic = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedTopic
        populateCurrentTopicList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentTopicsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subtopicCell", for: indexPath)
        
        let subtopic = currentTopicsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(subtopic.topicNo). \(subtopic.topicTitle)"
        cell.contentConfiguration = content

        return cell
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
