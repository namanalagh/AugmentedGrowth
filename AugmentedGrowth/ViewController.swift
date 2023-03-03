//
//  ViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 26/01/23.
//

import UIKit


class ViewController: UIViewController, UISearchResultsUpdating  {

    var selectedTopic: String?
    
    //let searchController = UISearchController(searchResultsController: resultsViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Explore"

    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "subjectSegue"{
            let sharedTopic = selectedTopic
            let destinationVC = segue.destination as! SubjectTableViewController
            destinationVC.selectedTopic = sharedTopic!
        }
    }
    
    @IBAction func astronomyViewAll(_ sender: Any) {
        selectedTopic = "Astronomy"
        self.performSegue(withIdentifier: "subjectSegue", sender: self)
    }
    
    @IBAction func mathViewAll(_ sender: Any) {
        selectedTopic = "Mathematics"
        self.performSegue(withIdentifier: "subjectSegue", sender: self)

    }
    
    @IBAction func physicsViewAll(_ sender: Any) {
        selectedTopic = "Physics"
        self.performSegue(withIdentifier: "subjectSegue", sender: self)

    }
    
    @IBAction func bioViewAll(_ sender: Any) {
        selectedTopic = "Biology"
        self.performSegue(withIdentifier: "subjectSegue", sender: self)

    }
    
    @IBAction func chemViewAll(_ sender: Any) {
        selectedTopic = "Chemistry"
        self.performSegue(withIdentifier: "subjectSegue", sender: self)

    }
    
    
}

