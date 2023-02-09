//
//  ViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 26/01/23.
//

import UIKit

class resultsViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ViewController: UIViewController, UISearchResultsUpdating  {

    let searchController = UISearchController(searchResultsController: resultsViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Explore"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
    }

    @IBAction func recommendedButtonPressed(_ sender: UIButton) {
        print("Button Pressed")
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
    
}

